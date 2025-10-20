import 'package:flutter/material.dart';

class AppTextformfield extends StatelessWidget {
  AppTextformfield({super.key, required this.label, this.filled=true, this.isPassword=false, this.icon});
  String label;
  bool filled;
  bool isPassword;
  Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          suffixIcon: icon,
          labelText: label,
          filled: true,
          fillColor: filled ?Colors.grey[100]:null,
          border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
