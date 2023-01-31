import 'dart:ui';

import 'package:flutter/material.dart';

import 'config/colors.dart';
import 'config/images.dart';

const kOnboardTextStyle = TextStyle(
  fontSize: 55,
  color: Colors.white,
  fontWeight: FontWeight.w800,
);
const kOnBoardSmallText = TextStyle(
  fontSize: 18,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);
const kAuthTextStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 12,
);
const kTotalSize = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w600,
);
const kSingleTitle = TextStyle(fontSize: 22, fontWeight: FontWeight.w600);
const kSingleDescription = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w300,
  overflow: TextOverflow.ellipsis,
);
const kSinglePrice = TextStyle(fontSize: 13, fontWeight: FontWeight.w600);
const kAuthMainHeadingTextStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w800,
  color: AppColors.white,
);
const kAuthSubHeadingTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: AppColors.white,
);
const kOrangeTextStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 12,
  color: AppColors.orange,
);
const kDashboardHeading = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: AppColors.textGrey,
);
const kCakeCardHeading = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);
const kCakeCardBody = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);
const kCakeCardPrice = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w500,
  color: Colors.white,
);
const kCakeCardButton = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w500,
  color: Colors.orange,
);
const kSubDashboardHeading = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 25,
);
const kCartCardTitle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 12,
);
const kCartCardBody = TextStyle(
  fontWeight: FontWeight.w300,
  fontSize: 10,
);
const kProfileItemTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color: AppColors.white,
);
BoxShadow kShadow = BoxShadow(
  color: Colors.black.withOpacity(0.15),
  spreadRadius: 3,
  blurRadius: 6,
  offset: const Offset(3, 3),
);
BoxShadow kShadowVertical = BoxShadow(
  color: Colors.black.withOpacity(0.15),
  spreadRadius: 3,
  blurRadius: 6,
  offset: const Offset(3, 3),
);
const kBoxRadius = BorderRadius.only(
  bottomLeft: Radius.circular(17),
  bottomRight: Radius.circular(17),
);
const kBoxFullRadius = BorderRadius.all(Radius.circular(17));
const kBoxRadiusVerticalRight = BorderRadius.only(
  topRight: Radius.circular(17),
  bottomRight: Radius.circular(17),
);
const kBoxRadiusVerticalLeft = BorderRadius.only(
  topLeft: Radius.circular(17),
  bottomLeft: Radius.circular(17),
);
kBackgroundImage(ImageProvider appImages) => BoxDecoration(
      image: DecorationImage(image: appImages, fit: BoxFit.fill),
    );
