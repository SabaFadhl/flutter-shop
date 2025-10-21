import 'package:flutter/material.dart';

import '../components/app_textformfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterScreen> {
  var _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        // padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                backgroundImage: _image != null ? FileImage(_image!) : null,
                child: _image == null
                    ? const Icon(Icons.camera_alt, size: 40, color: Colors.grey)
                    : null,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: AppTextformfield(label: 'Name')),
                Expanded(child: AppTextformfield(label: 'Surname')),
              ],
            ),
            AppTextformfield(label: 'Email'),
            SizedBox(height: 10),
            AppTextformfield(
              label: 'Password',
              isPassword: true,
              icon: Icon(Icons.visibility_off),
            ),

          ],
        ),
      ),
    );
  }
}
