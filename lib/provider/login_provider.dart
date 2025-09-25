import 'package:flutter/material.dart';
import 'package:todoapp/repository/login_repository.dart';

class LoginProvider extends ChangeNotifier {
  LoginRepository repository;
  LoginProvider(this.repository);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
