import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastries/utils/config/colors.dart';
import 'package:pastries/widgets/bottomNav.dart';

import '../utils/config/images.dart';
import '../utils/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 4;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: kBackgroundImage(AppImages.singleCakeBGImage),
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: ListView(
          controller: _scrollController,
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
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const KProfileItem(
              image: AppImages.editProfileIcon,
              text: "Edit Profile",
            ),
            const KProfileItem(
              image: AppImages.shoppingAdIcon,
              text: "Shopping Address",
            ),
            const KProfileItem(
              image: AppImages.orderHistoryIcon,
              text: "Order History",
            ),
            const KProfileItem(
              image: AppImages.notificationIcon,
              text: "Notification",
            ),
            const KProfileItem(
              image: AppImages.settingsIcon,
              text: "Settings",
            ),
            const KProfileItem(
              image: AppImages.logoutIcon,
              text: "Log Out",
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Image(
                image: AppImages.whiteIcon,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(
        scrollController: _scrollController,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}

class KProfileItem extends StatelessWidget {
  final AssetImage image;
  final String text;
  const KProfileItem({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Image(image: image),
          ),
          Text(
            text,
            style: kProfileItemTextStyle,
          )
        ],
      ),
    );
  }
}
