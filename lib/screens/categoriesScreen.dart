import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastries/utils/config/images.dart';

import '../utils/constants.dart';
import '../widgets/bottomNav.dart';
import '../widgets/exploreCardsOrder.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int _selectedIndex = 2;
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            children: const [
              Text("Top Categories", style: kSubDashboardHeading),
              SizedBox(
                height: 40,
              ),
              ExploreCardsOrder(
                item1: 4,
                image1: AppImages.background,
                text1: "New This Week",
                item2: 2,
                image2: AppImages.background,
                text2: "Best Seller",
              ),
              SizedBox(
                height: 20,
              ),
              ExploreCardsOrder(
                item1: 2,
                image1: AppImages.background,
                text1: "Cheap Trills",
                item2: 4,
                image2: AppImages.background,
                text2: "Combined Mixtures",
              ),
              SizedBox(
                height: 20,
              ),
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
