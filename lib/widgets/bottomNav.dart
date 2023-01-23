import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pastries/routes.dart';
import 'package:scroll_to_hide_bottom_navigation_bar/scroll_to_hide_bottom_navigation_bar.dart';

import '../utils/config/colors.dart';

class BottomNav extends StatelessWidget {
  final ScrollController scrollController;
  int selectedIndex = 0;
  final String? pageName;

  BottomNav({
    required this.scrollController,
    required this.selectedIndex,
    this.pageName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollToHideBottomNavigationBar(
      scrollController: scrollController,
      duration: const Duration(milliseconds: 1000),
      children: [
        BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset("images/homeIcon.svg"),
              label: 'Home',
              backgroundColor: AppColors.white,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("images/searchIcon.svg"),
              label: 'Search',
              backgroundColor: AppColors.white,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("images/gridIcon.svg"),
              label: 'Grid',
              backgroundColor: AppColors.white,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("images/cartIcon.svg"),
              label: 'Cart',
              backgroundColor: AppColors.white,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("images/profileIcon.svg"),
              label: 'person',
              backgroundColor: AppColors.white,
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: AppColors.orange,
          selectedIconTheme: const IconThemeData(
            color: AppColors.orange,
            size: 27,
          ),
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.orange,
          ),
          unselectedIconTheme:
              const IconThemeData(color: AppColors.textGrey, size: 10),
          onTap: (index) {
            switch (index) {
              case 0:
                AppNavigator.push(Routes.Dashboard);
                return;
              case 1:
                AppNavigator.push(Routes.Search);
                return;
              case 2:
                AppNavigator.push(Routes.Categories);
                return;
              case 3:
                AppNavigator.push(Routes.Cart);
                return;
            }
          },
        ),
      ],
    );
  }
}
