import 'package:flutter/material.dart';
import 'package:katan/app/app.dart';
import 'package:katan/app/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const KatanApp());
}
