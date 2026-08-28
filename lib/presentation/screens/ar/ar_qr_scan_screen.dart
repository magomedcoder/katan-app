import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/domain/entities/ar_object.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ArQrScanScreen extends StatefulWidget {
  const ArQrScanScreen({super.key});

  @override
  State<ArQrScanScreen> createState() => _ArQrScanScreenState();
}

class _ArQrScanScreenState extends State<ArQrScanScreen> {
  final _controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
  );
  bool _handled = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onDetect(BarcodeCapture capture) {
    if (_handled) {
      return;
    }

    for (final barcode in capture.barcodes) {
      final raw = barcode.rawValue?.trim();
      if (raw == null || raw.isEmpty) {
        continue;
      }

      _handled = true;
      Navigator.pop(context, raw);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Скан QR'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          MobileScanner(
            controller: _controller,
            onDetect: _onDetect,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  'Наведите на QR объекта Katan',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white.withValues(alpha: 0.7)),
                ),
              ),
            ),
          ),
          IgnorePointer(
            child: Center(
              child: Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primary, width: 2),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<String?> openArQrScan(BuildContext context) {
  return Navigator.of(context).push<String>(
    MaterialPageRoute(builder: (_) => const ArQrScanScreen()),
  );
}

({ArObjectRef? ref, String? error}) parseArQrPayload(String raw) {
  final hint = ArObjectRef.unsupportedKindHint(raw);
  if (hint != null) {
    return (ref: null, error: hint);
  }

  final ref = ArObjectRef.tryParse(raw);
  if (ref == null) {
    return (ref: null, error: 'Неизвестный QR');
  }

  return (ref: ref, error: null);
}
