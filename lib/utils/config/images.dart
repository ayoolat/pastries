import 'package:flutter/material.dart';

const String _imagePath = 'images';

class _Image extends AssetImage {
  const _Image(String fileName) : super('$_imagePath/$fileName');
}

class AppImages {
  static const background = _Image('background.png');
  static const logo = _Image('logo.png');
  static const authBackground = _Image('authBackground.png');
  static const dashboardImage1 = _Image('chocolateCakeImage.png');
  static const dashboardImage2 = _Image('vanillaCakeImage.png');
  static const newThisWeek = _Image('authBackground.png');
  static const heartIcon = _Image('heartIcon.png');
  static const bestSeller = _Image('authBackground.png');
  static const cheapTrills = _Image('authBackground.png');
  static const combinedMixtures = _Image('authBackground.png');
  static const filterIcon = _Image('filterIcon.png');
  static const emptyCartImage = _Image('emptyCartImage.png');
  static const homeIcon = _Image('homeIcon.png');
  static const searchIcon = _Image('searchIcon.png');
  static const gridIcon = _Image('gridIcon.png');
  static const cartIcon = _Image('cartIcon.png');
  static const profileIcon = _Image('profileIcon.png');

  static Future precacheAssets(BuildContext context) async {
    await precacheImage(background, context);
    await precacheImage(logo, context);
    await precacheImage(authBackground, context);
    await precacheImage(dashboardImage1, context);
    await precacheImage(dashboardImage2, context);
    await precacheImage(heartIcon, context);
    await precacheImage(filterIcon, context);
    await precacheImage(emptyCartImage, context);
    await precacheImage(homeIcon, context);
    await precacheImage(searchIcon, context);
    await precacheImage(gridIcon, context);
    await precacheImage(cartIcon, context);
    await precacheImage(profileIcon, context);
  }
}
