import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastries/utils/config/colors.dart';

import '../utils/config/images.dart';
import '../utils/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: kBackgroundImage(AppImages.singleCakeBGImage),
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 30),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 103,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: kBoxFullRadius,
                    border: Border.all(
                      color: AppColors.white,
                      width: 2,
                    ),
                  ),
                  child: const Image(
                    image: AppImages.profileImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      "Toluwanimi Ayoola",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white),
                    ),
                    Text(
                      "toluwanimiayola@gmail.com",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: AppColors.white,
                      ),
                    ),
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
