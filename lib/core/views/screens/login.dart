import 'package:flutter/material.dart';

import '../components/app_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Text(
              "Welcome Back 👋",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Login to your account",
            ),
          ),
          SizedBox(height: 50),
          AppTextformfield(label: 'Email',),
          SizedBox(height: 10),
          AppTextformfield(label: 'Password',isPassword: true,icon: Icon(Icons.visibility_off),),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.teal),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
