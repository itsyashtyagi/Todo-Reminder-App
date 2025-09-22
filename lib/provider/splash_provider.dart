import 'dart:async';
import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  void navigateToHome(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.popAndPushNamed(context, '/login'),
    );
  }
}
