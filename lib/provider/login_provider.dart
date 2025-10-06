import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:todoapp/model/login_model.dart';
import 'package:todoapp/repository/login_repository.dart';

class LoginProvider extends ChangeNotifier {
  LoginRepository repository;
  LoginProvider(this.repository);

  LoginModel? loginModel;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  bool isLoading = false;
  String? error;

  Future<bool> userLogin(String email, String password) async {
    isLoading = true;
    error = null;
    notifyListeners();
    try {
      loginModel = await repository.login(
        emailController.text,
        passwordController.text,
      );
      notifyListeners();
      return true;
    } catch (e) {
      error = e.toString();
      log("Error ${e.toString()}");
      isLoading = false;
      notifyListeners();
      return false;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> userLoginButton(BuildContext context) async {
    if (!isLoading && (formkey.currentState?.validate() ?? false)) {
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      // final navigator = Navigator.of(context);
      final success = await userLogin(email, password);
      if (success) {
        if (context.mounted) {
          Navigator.popAndPushNamed(context, '/home');
        }
      } else {
        if (context.mounted) {
          showDialog(
            context: context,
            builder: (ctx) => Dialog(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Login Failed please make sure to connect Internet."),
                  const SizedBox(height: 10),
                  Text(loginModel?.message ?? ""),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("Close"),
                  ),
                ],
              ),
            ),
          );
        }
      }
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
