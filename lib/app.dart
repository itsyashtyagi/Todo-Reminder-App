import 'package:flutter/material.dart';
import 'package:todoapp/ui/login_screen.dart';
import 'package:todoapp/ui/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
      },
      title: "Todo-App",
    );
  }
}
