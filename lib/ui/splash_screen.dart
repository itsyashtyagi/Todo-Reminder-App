import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/provider/splash_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashProvider>().navigateToHome(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Image.asset("assets/images/todologo.png", fit: BoxFit.fill),
        ),
      ),
    );
  }
}
