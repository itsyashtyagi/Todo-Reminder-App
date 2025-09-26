import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/model/login_model.dart';
import 'package:todoapp/provider/login_provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
        child: Form(
          key: context.watch<LoginProvider>().formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Enter your credentials to get in",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 30),
              _customTextField(
                title: "Email",
                hintText: "yashxyz@gmail.com",
                controller: context.watch<LoginProvider>().emailController,
                icon: Icons.email,
              ),
              const SizedBox(height: 20),
              _customTextField(
                title: "Password",
                hintText: "*********",
                controller: context.watch<LoginProvider>().passwordController,
                icon: Icons.password,
              ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  context.read<LoginProvider>().userLoginButton(context);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: context.watch<LoginProvider>().isLoading
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customTextField({
    required String title,
    required String hintText,
    TextEditingController? controller,
    required IconData icon,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Colors.black, fontSize: 18)),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: title,
            labelStyle: TextStyle(color: Colors.black),
            fillColor: Colors.black,
            focusColor: Colors.black,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
            ),
          ),
          validator: (String? value) {
            if (value == null || value.trim().isEmpty) {
              return "Please enter the valid $title";
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}
