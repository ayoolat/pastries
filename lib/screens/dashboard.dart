import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hidable/hidable.dart';
import 'package:pastries/utils/config/colors.dart';
import 'package:scroll_to_hide_bottom_navigation_bar/scroll_to_hide_bottom_navigation_bar.dart';

import '../routes.dart';
import '../utils/config/images.dart';
import '../utils/constants.dart';
import '../widgets/CategoriesNavitionBar.dart';
import '../widgets/MainCakeCard.dart';
import '../widgets/bottomNav.dart';
import '../widgets/dashboardHeading.dart';
import '../widgets/exploreCardsOrder.dart';
import '../widgets/randomExplorationCard.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Hi, Tolu!', style: kDashboardHeading),
                    Stack(
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          decoration: const BoxDecoration(
                            color: AppColors.orange,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const Positioned(
                          left: 9,
                          top: 2,
                          child: Text(
                            "T",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Color(0xfffd9d9d9),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "What would you like to eat?",
                  style: TextStyle(fontSize: 37, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "or type what you are looking for",
                    hintStyle: TextStyle(
                      fontSize: 15.12,
                      fontWeight: FontWeight.w300,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: AppColors.orange,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 15,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: AppColors.orange),
                    ),
                    filled: true,
                    fillColor: AppColors.lighterOrange,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CategoriesNavigationText(
                        color: AppColors.orange,
                        text: "Cakes",
                        icon: Icons.circle,
                      ),
                      CategoriesNavigationText(
                        color: AppColors.black,
                        text: "Creams",
                      ),
                      CategoriesNavigationText(
                        color: AppColors.black,
                        text: "Waffles",
                      ),
                      CategoriesNavigationText(
                        color: AppColors.black,
                        text: "Cup Cakes",
                      ),
                      CategoriesNavigationText(
                        color: AppColors.black,
                        text: "More Iceing",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MainCakeCard(
                        image: AppImages.dashboardImage1,
                        heading: "Chocolate Berries Cake",
                        price: "₦ 23,699",
                        body:
                            "A kick well chocolate cake for all with nice berries.",
                      ),
                      MainCakeCard(
                        image: AppImages.dashboardImage2,
                        heading: "Vanilla Crunchy Cake",
                        price: "₦ 23,699",
                        body:
                            "A kick well chocolate cake for all with nice berries.",
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const DashboardHeadings(
                  text: "Explore from categories",
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: const [
                    ExploreCardsOrder(
                      item1: 4,
                      image1: AppImages.dashboardImage1,
                      text1: "New This Week",
                      item2: 2,
                      image2: AppImages.dashboardImage1,
                      text2: "Best Seller",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ExploreCardsOrder(
                      item1: 2,
                      image1: AppImages.dashboardImage1,
                      text1: "Cheap Trills",
                      item2: 4,
                      image2: AppImages.dashboardImage1,
                      text2: "Combined Mixtures",
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const DashboardHeadings(
                  text: "Random Exploration",
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: const [
                    RandomExplorationCard(
                      image: AppImages.dashboardImage1,
                      heading: "Chocolate Berries Cake",
                      price: "₦ 23,699",
                      body:
                          "A kick well chocolate cake for all with nice berries.",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RandomExplorationCard(
                      image: AppImages.dashboardImage1,
                      heading: "Chocolate Berries Cake",
                      price: "₦ 23,699",
                      body:
                          "A kick well chocolate cake for all with nice berries.",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RandomExplorationCard(
                      image: AppImages.dashboardImage1,
                      heading: "Chocolate Berries Cake",
                      price: "₦ 23,699",
                      body:
                          "A kick well chocolate cake for all with nice berries.",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RandomExplorationCard(
                      image: AppImages.dashboardImage1,
                      heading: "Chocolate Berries Cake",
                      price: "₦ 23,699",
                      body:
                          "A kick well chocolate cake for all with nice berries.",
                    ),
                  ],
                ),
              ],
            ),
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
