import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/config/colors.dart';
import '../utils/config/images.dart';
import '../utils/constants.dart';

class MainCakeCard extends StatelessWidget {
  double height;
  double? width;
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
    this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0, bottom: 16),
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.fitWidth,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(17),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 3,
            blurRadius: 6,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Image(image: AppImages.heartIcon),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    heading,
                    style: kCakeCardHeading,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  body,
                  style: kCakeCardBody,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: kCakeCardPrice,
                    ),
                    ButtonTheme(
                      child: TextButton(
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
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
