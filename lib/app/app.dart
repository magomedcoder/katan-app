import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/screens/login/login_screen.dart';
import 'package:katan/presentation/screens/profile/profile_screen.dart';

class KatanApp extends StatelessWidget {
  const KatanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..bootstrap(),
      child: MaterialApp(
        title: 'Katan',
        debugShowCheckedModeBanner: false,
        theme: buildAppTheme(),
        home: const _AuthGate(),
      ),
    );
  }
}

class _AuthGate extends StatelessWidget {
  const _AuthGate();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return switch (state) {
          AuthInitial() => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          AuthAuthenticated() => const ProfileScreen(),
          AuthLoading() || AuthUnauthenticated() => const LoginScreen(),
        };
      },
    );
  }
}
