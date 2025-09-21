import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/app.dart';
import 'package:todoapp/provider/splash_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashProvider()),
      ],
      child: const App(),
    ),
  );
}
