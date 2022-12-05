import 'dart:ui';

import 'package:flutter/material.dart';

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
kBackgroundImage(ImageProvider appImages) => BoxDecoration(
      image: DecorationImage(image: appImages, fit: BoxFit.fill),
    );
