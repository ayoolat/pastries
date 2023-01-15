import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../utils/config/colors.dart';

class CategoriesNavigationText extends StatelessWidget {
  final Color color;
  final String text;
  IconData? icon;

  CategoriesNavigationText(
      {super.key, required this.color, required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: color,
          ),
        ),
        Icon(
          icon,
          color: AppColors.orange,
          size: 7,
        )
      ],
    );
  }
}
