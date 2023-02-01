import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/config/images.dart';
import '../utils/constants.dart';

class CakeCardTemplate extends StatelessWidget {
  double height;
  double? width;
  final AssetImage image;
  final Widget button;
  final String heading;
  final String price;
  final String body;
  double rightMargin = 0;
  double bottomMargin = 0;
  CakeCardTemplate({
    Key? key,
    required this.image,
    required this.heading,
    required this.body,
    required this.price,
    this.width,
    required this.height,
    required this.button,
    required this.rightMargin,
    required this.bottomMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: rightMargin, bottom: bottomMargin),
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
                    button
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
