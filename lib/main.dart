import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gamifier/injection.dart';
import 'package:gamifier/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(AppWidget());
}
