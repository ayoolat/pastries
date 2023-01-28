import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastries/routes.dart';
import 'package:pastries/utils/config/colors.dart';
import 'package:pastries/widgets/bottomNav.dart';

import '../utils/config/images.dart';
import '../utils/constants.dart';
import '../widgets/profileItem.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: _scrollController,
        child: Container(
          height: MediaQuery.of(context).size.height + 150,
          width: double.infinity,
          decoration: kBackgroundImage(AppImages.singleCakeBGImage),
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 103,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      borderRadius: kBoxFullRadius,
                      image: const DecorationImage(
                          image: AppImages.profileImage, fit: BoxFit.fill),
                      border: Border.all(
                        color: AppColors.white,
                        width: 2,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Toluwanimi Ayoola",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                            overflow: TextOverflow.ellipsis),
                      ),
                      Text(
                        "toluwanimiayola@gmail.com",
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: AppColors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ProfileItem(
                image: AppImages.editProfileIcon,
                text: "Edit Profile",
                ontap: () {},
              ),
              ProfileItem(
                image: AppImages.shoppingAdIcon,
                text: "Shopping Address",
                ontap: () {},
              ),
              ProfileItem(
                image: AppImages.orderHistoryIcon,
                text: "Order History",
                ontap: () {},
              ),
              ProfileItem(
                image: AppImages.notificationIcon,
                text: "Notification",
                ontap: () {},
              ),
              ProfileItem(
                image: AppImages.settingsIcon,
                text: "Settings",
                ontap: () {},
              ),
              ProfileItem(
                image: AppImages.logoutIcon,
                text: "Log Out",
                ontap: () {
                  AppNavigator.push(Routes.Login);
                },
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
      ),
      bottomNavigationBar: BottomNav(
        scrollController: _scrollController,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
