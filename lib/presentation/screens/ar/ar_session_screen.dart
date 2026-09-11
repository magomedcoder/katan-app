import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/repositories/ar_objects_repository.dart';
import 'package:katan/presentation/cubit/ar_session_cubit.dart';
import 'package:katan/presentation/screens/ar/ar_qr_scan_screen.dart';
import 'package:katan/presentation/screens/ar/widgets/ar_camera_overlay.dart';
import 'package:katan/presentation/screens/ar/widgets/ar_hud_controls.dart';
import 'package:katan/presentation/screens/ar/widgets/ar_nav_banner.dart';
import 'package:katan/presentation/screens/ar/widgets/ar_nearby_sheet.dart';
import 'package:katan/presentation/screens/ar/widgets/ar_preview_sheet.dart';
import 'package:katan/presentation/widgets/error_view.dart';

class ArSessionScreen extends StatefulWidget {
  const ArSessionScreen({
    super.key,
    required this.account,
    this.isActive = true,
  });

  final Account account;
  final bool isActive;

  @override
  State<ArSessionScreen> createState() => _ArSessionScreenState();
}

class _ArSessionScreenState extends State<ArSessionScreen> {
  late final ArSessionCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = ArSessionCubit(
      objectsRepository: getIt<ArObjectsRepository>(),
      allowedKinds: widget.account.arAllowedKinds,
    )..start();
    if (!widget.isActive) {
      unawaited(_cubit.setActive(false));
    }
  }

  @override
  void didUpdateWidget(covariant ArSessionScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isActive != widget.isActive) {
      unawaited(_cubit.setActive(widget.isActive));
    }
  }

  @override
  void dispose() {
    unawaited(_cubit.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: _ArSessionView(isActive: widget.isActive),
    );
  }
}

class _ArSessionView extends StatefulWidget {
  const _ArSessionView({required this.isActive});

  final bool isActive;

  @override
  State<_ArSessionView> createState() => _ArSessionViewState();
}

class _ArSessionViewState extends State<_ArSessionView> {
  CameraController? _camera;
  String? _cameraError;
  bool _cameraStarting = true;

  @override
  void initState() {
    super.initState();
    unawaited(_initCamera());
  }

  @override
  void didUpdateWidget(covariant _ArSessionView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isActive != widget.isActive) {
      if (widget.isActive) {
        unawaited(_resumeCamera());
      } else {
        unawaited(_pauseCamera());
      }
    }
  }

  Future<void> _initCamera() async {
    try {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        setState(() {
          _cameraStarting = false;
          _cameraError = 'Камера не найдена - режим компаса';
        });
        return;
      }

      final back = cameras.firstWhere((c) => c.lensDirection == CameraLensDirection.back, orElse: () => cameras.first);
      final controller = CameraController(
        back,
        ResolutionPreset.high,
        enableAudio: false,
      );
      await controller.initialize();
      if (!mounted) {
        await controller.dispose();
        return;
      }

      setState(() {
        _camera = controller;
        _cameraStarting = false;
      });
      if (!widget.isActive) {
        await _pauseCamera();
      }
    } catch (_) {
      if (!mounted) {
        return;
      }

      setState(() {
        _cameraStarting = false;
        _cameraError = 'Камера недоступна - режим компаса';
      });
    }
  }

  Future<void> _pauseCamera() async {
    final c = _camera;
    if (c != null && c.value.isInitialized) {
      try {
        await c.pausePreview();
      } catch (_) {}
    }
  }

  Future<void> _resumeCamera() async {
    final c = _camera;
    if (c != null && c.value.isInitialized) {
      try {
        await c.resumePreview();
      } catch (_) {}
    }
  }

  Future<void> _scanQr() async {
    final raw = await openArQrScan(context);
    if (raw == null || !mounted) {
      return;
    }

    final parsed = parseArQrPayload(raw);
    if (parsed.error != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(parsed.error!)));
      return;
    }

    final ref = parsed.ref!;
    try {
      final item = await context.read<ArSessionCubit>().resolveRef(ref);
      if (!mounted) {
        return;
      }

      if (item == null) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Объект не найден или нет прав')));
      }
    } on Failure catch (e) {
      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  @override
  void dispose() {
    final camera = _camera;
    if (camera != null) {
      unawaited(camera.dispose());
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocConsumer<ArSessionCubit, ArSessionState>(
        listenWhen: (prev, next) => next is ArSessionReady && next.selected != null && (prev is! ArSessionReady || prev.selected?.object.ref != next.selected!.object.ref),
        listener: (context, state) {
          if (state is ArSessionReady && state.selected != null) {
            unawaited(showArPreviewSheet(context, state.selected!));
          }
        },
        builder: (context, state) {
          return switch (state) {
            ArSessionInitial() || ArSessionLoading() => const Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
            ArSessionNeedsPermission(
              :final cameraDenied,
              :final locationDenied,
              :final message,
            ) => _PermissionView(
                message: message,
                cameraDenied: cameraDenied,
                locationDenied: locationDenied,
                onRetry: () => context.read<ArSessionCubit>().start(),
                onSettings: () => context.read<ArSessionCubit>().openSettings(),
              ),
            ArSessionFailure(:final message) => ErrorView(
              message: message,
              onRetry: () => context.read<ArSessionCubit>().start(),
            ),
            ArSessionReady(
              :final nearby,
              :final enabledKinds,
              :final soloKind,
              :final headingDegrees,
              :final accuracyMeters,
              :final gpsWeak,
              :final lat,
              :final lng,
              :final navTarget,
              :final trackingPaused,
              :final indoorTitle,
              :final indoorPeerId,
              :final radiusMeters,
            ) =>
              Stack(
                fit: StackFit.expand,
                children: [
                  _CameraBackground(
                    controller: _camera,
                    starting: _cameraStarting,
                    error: _cameraError,
                  ),
                  ArCameraOverlay(
                    nearby: nearby,
                    headingDegrees: headingDegrees,
                    userLat: lat,
                    userLng: lng,
                  ),
                  SafeArea(
                    child: Column(
                      children: [
                        _TopHud(
                          heading: headingDegrees,
                          accuracy: accuracyMeters,
                          gpsWeak: gpsWeak,
                          paused: trackingPaused,
                          indoor: indoorPeerId > 0,
                          onScanQr: _scanQr,
                        ),
                        if (indoorPeerId > 0)
                          _IndoorBar(
                            title: indoorTitle,
                            onExit: () => context.read<ArSessionCubit>().exitIndoor(),
                          )
                        else ...[
                          if (navTarget != null)
                            ArNavBanner(
                              target: navTarget,
                              onCancel: () => context.read<ArSessionCubit>().stopNavigation(),
                            ),
                          ArHudControls(
                            radiusMeters: radiusMeters,
                            allowed: context.read<ArSessionCubit>().allowedKinds,
                            enabled: enabledKinds,
                            soloKind: soloKind,
                            onRadius: (r) => context.read<ArSessionCubit>().setRadiusMeters(r),
                            onToggle: (kind) => context.read<ArSessionCubit>().toggleKind(kind),
                            onSolo: (kind) => context.read<ArSessionCubit>().soloKind(kind),
                            onEnableAll: () => context.read<ArSessionCubit>().enableAllKinds(),
                          ),
                        ],
                        const Spacer(),
                        ArNearbySheet(
                          items: nearby.take(8).toList(),
                          onTap: (item) => context.read<ArSessionCubit>().select(item),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          };
        },
      ),
    );
  }
}

class _CameraBackground extends StatelessWidget {
  const _CameraBackground({
    required this.controller,
    required this.starting,
    required this.error,
  });

  final CameraController? controller;
  final bool starting;
  final String? error;

  @override
  Widget build(BuildContext context) {
    if (starting) {
      return const ColoredBox(
        color: Colors.black,
        child: Center(child: CircularProgressIndicator(color: Colors.white54)),
      );
    }
    final c = controller;
    if (c != null && c.value.isInitialized) {
      return FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: c.value.previewSize?.height ?? MediaQuery.sizeOf(context).width,
          height: c.value.previewSize?.width ?? MediaQuery.sizeOf(context).height,
          child: CameraPreview(c),
        ),
      );
    }
    return ColoredBox(
      color: const Color(0xFF0F172A),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            error ?? 'Режим компаса',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}

class _TopHud extends StatelessWidget {
  const _TopHud({
    required this.heading,
    required this.accuracy,
    required this.gpsWeak,
    required this.paused,
    required this.onScanQr,
    this.indoor = false,
  });

  final double heading;
  final double accuracy;
  final bool gpsWeak;
  final bool paused;
  final bool indoor;
  final VoidCallback onScanQr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      child: Column(
        children: [
          Row(
            children: [
              _HudChip(
                icon: Icons.explore,
                label: '${heading.round()}',
              ),
              const SizedBox(width: 8),
              _HudChip(
                icon: Icons.gps_fixed,
                label: '±${accuracy.round()} м',
                danger: gpsWeak,
              ),
              if (paused) ...[
                const SizedBox(width: 8),
                const _HudChip(icon: Icons.pause, label: 'пауза'),
              ],
              if (indoor) ...[
                const SizedBox(width: 8),
                const _HudChip(icon: Icons.meeting_room, label: 'внутри'),
              ],
              const Spacer(),
              _HudChip(
                icon: Icons.qr_code_scanner,
                label: 'QR',
                onTap: onScanQr,
              ),
            ],
          ),
          if (gpsWeak)
            Container(
              margin: const EdgeInsets.only(top: 8),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.warning.withValues(alpha: 0.92),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: [
                  Icon(Icons.warning_amber_rounded, size: 18, color: Colors.white),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Слабый GPS - якоря могут смещаться',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _IndoorBar extends StatelessWidget {
  const _IndoorBar({
    required this.title,
    required this.onExit,
  });

  final String title;
  final VoidCallback onExit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title.isEmpty ? 'Внутри локальные XYZ' : '$title XYZ',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: onExit,
            icon: const Icon(Icons.logout, size: 16, color: Colors.white),
            label: const Text(
              'Наружу',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class _HudChip extends StatelessWidget {
  const _HudChip({
    required this.icon,
    required this.label,
    this.danger = false,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final bool danger;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final chip = Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: (danger ? AppColors.danger : Colors.black).withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: Colors.white),
          const SizedBox(width: 6),
          Text(label, style: const TextStyle(
            color: Colors.white, 
            fontSize: 13,
          )),
        ],
      ),
    );

    if (onTap == null) {
      return chip;
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: chip,
      ),
    );
  }
}

class _PermissionView extends StatelessWidget {
  const _PermissionView({
    required this.message,
    required this.cameraDenied,
    required this.locationDenied,
    required this.onRetry,
    required this.onSettings,
  });

  final String message;
  final bool cameraDenied;
  final bool locationDenied;
  final VoidCallback onRetry;
  final VoidCallback onSettings;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.view_in_ar, size: 64, color: Colors.white70),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              [
                if (cameraDenied) 'Камера',
                if (locationDenied) 'Геолокация',
              ].toString(),
              style: const TextStyle(color: Colors.white54),
            ),
            const SizedBox(height: 24),
            FilledButton(onPressed: onRetry, child: const Text('Повторить')),
            const SizedBox(height: 8),
            TextButton(
              onPressed: onSettings,
              child: const Text('Открыть настройки'),
            ),
          ],
        ),
      ),
    );
  }
}
