import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/config/colors.dart';

class AuthTextField extends StatelessWidget {
  final Widget icon;
  final String hintText;
  final Function(String)? onChange;
  final bool obscureText;
  const AuthTextField(
      {required this.icon,
      this.onChange,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        suffixIcon: icon,
        isDense: true,
        contentPadding: const EdgeInsets.all(15.0),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColors.textGrey),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      onChanged: onChange,
      obscureText: obscureText,
    );
  }
}
