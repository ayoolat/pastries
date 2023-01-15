import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastries/utils/config/colors.dart';

import '../utils/constants.dart';
import '../widgets/CategoriesNavitionBar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
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
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
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
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 283,
                    width: 210,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}