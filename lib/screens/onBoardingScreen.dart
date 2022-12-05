import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routes.dart';
import '../utils/config/colors.dart';
import '../utils/config/images.dart';
import '../utils/constants.dart';
import '../widgets/stretchedButton.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState() {
    scheduleMicrotask(() async {
      await AppImages.precacheAssets(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: kBackgroundImage(AppImages.background),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(image: AppImages.logo),
              Container(
                child: Column(
                  children: [
                    const Text(
                      "Let’s",
                      textAlign: TextAlign.center,
                      style: kOnboardTextStyle,
                    ),
                    const Text(
                      "Get Started",
                      textAlign: TextAlign.center,
                      style: kOnboardTextStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'By finding the best cakes for you.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    StretchedButton(
                      onPressed: () {
                        AppNavigator.push(Routes.Login);
                      },
                      text: 'Explore',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
