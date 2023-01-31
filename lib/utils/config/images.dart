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
  static const cartItem = _Image('cartItem.png');
  static const trashIcon = _Image('trashIcon.png');
  static const singleCakeBGImage = _Image('singleCakeBGImage.png');
  static const profileImage = _Image('profileImage.png');
  static const editProfileIcon = _Image('editProfileIcon.png');
  static const logoutIcon = _Image('logoutIcon.png');
  static const notificationIcon = _Image('notificationIcon.png');
  static const orderHistoryIcon = _Image('orderHistoryIcon.png');
  static const shoppingAdIcon = _Image('shoppingAdIcon.png');
  static const settingsIcon = _Image('settingsIcon.png');
  static const whiteIcon = _Image('whiteIcon.png');
  static const sliderIcon = _Image('sliderIcon.png');
  static const priceIcon = _Image('priceIcon.png');
  static const ingredientsIcon = _Image('ingredientsIcon.png');
  static const titleIcon = _Image('titleIcon.png');
  static const descriptionIcon = _Image('descriptionIcon.png');

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
    await precacheImage(cartItem, context);
    await precacheImage(trashIcon, context);
    await precacheImage(singleCakeBGImage, context);
    await precacheImage(profileImage, context);
    await precacheImage(editProfileIcon, context);
    await precacheImage(logoutIcon, context);
    await precacheImage(notificationIcon, context);
    await precacheImage(orderHistoryIcon, context);
    await precacheImage(shoppingAdIcon, context);
    await precacheImage(settingsIcon, context);
    await precacheImage(whiteIcon, context);
    await precacheImage(sliderIcon, context);
    await precacheImage(priceIcon, context);
    await precacheImage(ingredientsIcon, context);
    await precacheImage(titleIcon, context);
    await precacheImage(descriptionIcon, context);
  }
}
