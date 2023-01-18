import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/config/colors.dart';
import 'CakeCardTemplate.dart';

class RandomExplorationCard extends StatelessWidget {
  final AssetImage image;
  final String heading;
  final String price;
  final String body;

  const RandomExplorationCard({
    Key? key,
    required this.image,
    required this.heading,
    required this.body,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CakeCardTemplate(
      rightMargin: 0,
      image: image,
      heading: heading,
      price: price,
      body: body,
      height: 188,
      width: 155,
      button: SizedBox(
        width: 25,
        height: 25,
        child: TextButton(
          onPressed: () {
            print("");
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            fixedSize: MaterialStateProperty.all(
              const Size(3, 4),
            ),
            backgroundColor: MaterialStateProperty.all(
              AppColors.white,
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: const Icon(
              Icons.add,
              color: AppColors.orange,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
