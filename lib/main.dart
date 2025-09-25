import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/app.dart';
import 'package:todoapp/provider/login_provider.dart';
import 'package:todoapp/provider/splash_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashProvider()),
        ChangeNotifierProvider(create: (context) => LoginProvider()),
      ],
      child: const App(),
    ),
  );
}
