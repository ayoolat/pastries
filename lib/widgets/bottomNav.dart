import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
              backgroundColor: AppColors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
              backgroundColor: AppColors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
              ),
              label: 'Grid',
              backgroundColor: AppColors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: 'Cart',
              backgroundColor: AppColors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Cart',
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
          ),
          unselectedIconTheme: const IconThemeData(
            color: AppColors.textGrey,
          ),
          onTap: (index) {
            print(index);
            switch (index) {
              case 0:
                AppNavigator.push(Routes.Dashboard);
                return;
              case 1:
                AppNavigator.push(Routes.Search);
                return;
            }
          },
        ),
      ],
    );
  }
}
