import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routes.dart';
import '../utils/config/colors.dart';
import '../utils/config/images.dart';
import '../utils/constants.dart';
import 'CakeCardTemplate.dart';

class MainCakeCard extends StatelessWidget {
  final AssetImage image;
  final String heading;
  final String price;
  final String body;
  MainCakeCard({
    Key? key,
    required this.image,
    required this.heading,
    required this.body,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigator.push(Routes.View);
      },
      child: CakeCardTemplate(
        rightMargin: 20,
        bottomMargin: 20,
        image: image,
        heading: heading,
        price: price,
        body: body,
        height: 283,
        width: 210,
        button: TextButton(
          onPressed: () {
            print("");
          },
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(
              const Size(100, 10),
            ),
            backgroundColor: MaterialStateProperty.all(
              AppColors.white,
            ),
          ),
          child: const Text(
            "Add to cart",
            style: kCakeCardButton,
          ),
        ),
      ),
    );
  }
}
