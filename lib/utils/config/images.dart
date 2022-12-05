import 'package:flutter/material.dart';

const String _imagePath = 'images';

class _Image extends AssetImage {
  const _Image(String fileName) : super('$_imagePath/$fileName');
}

class AppImages {
  static const background = _Image('background.png');
  static const logo = _Image('logo.png');
  static const authBackground = _Image('authBackground.png');

  static Future precacheAssets(BuildContext context) async {
    await precacheImage(background, context);
    await precacheImage(logo, context);
    await precacheImage(authBackground, context);
  }
}
