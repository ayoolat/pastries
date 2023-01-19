import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastries/utils/config/colors.dart';
import 'package:pastries/utils/config/images.dart';
import 'package:pastries/widgets/bottomNav.dart';

import '../utils/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  ScrollController _scrollController = ScrollController();
  int _selectedIndex = 1;

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
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: _scrollController,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 4,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [kShadow],
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              fontSize: 15.12,
                              fontWeight: FontWeight.w300,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                              color: AppColors.orange,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 0),
                            ),
                            fillColor: AppColors.white,
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.orange,
                          boxShadow: [kShadow],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: const Image(
                          image: AppImages.filterIcon,
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AppImages.emptyCartImage,
                      ),
                      Text(
                        "What are you searching for?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(
        selectedIndex: _selectedIndex,
        scrollController: _scrollController,
      ),
    );
  }
}
