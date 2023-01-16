import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/config/colors.dart';

class ExploreCard extends StatelessWidget {
  final AssetImage image;
  final String text;

  const ExploreCard({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 94,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.fitWidth,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                spreadRadius: 3,
                blurRadius: 6,
                offset: const Offset(3, 0),
              ),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(17),
              topRight: Radius.circular(17),
            ),
          ),
        ),
        Container(
          height: 27,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(17),
              bottomRight: Radius.circular(17),
            ),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                spreadRadius: 3,
                blurRadius: 6,
                offset: const Offset(3, 3),
              ),
            ],
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
