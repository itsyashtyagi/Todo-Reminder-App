import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todoapp/ui/login_screen.dart';

class SplashProvider extends ChangeNotifier {
  void navigateToHome(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      ),
    );
  }
}
