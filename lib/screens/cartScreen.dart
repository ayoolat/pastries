import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastries/widgets/bottomNav.dart';

import '../utils/config/colors.dart';
import '../utils/config/images.dart';
import '../utils/constants.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _selectedIndex = 3;
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
            children: [
              const Text("Cart", style: kSubDashboardHeading),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                          height: 153,
                          decoration: BoxDecoration(
                            borderRadius: kBoxRadiusVerticalLeft,
                            boxShadow: [kShadowVertical],
                          ),
                          child: const Image(
                            image: AppImages.cartItem,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          width: double.infinity,
                          height: 153,
                          decoration: BoxDecoration(
                            borderRadius: kBoxRadiusVerticalRight,
                            color: AppColors.white,
                            boxShadow: [kShadow],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Align(
                                  alignment: Alignment.topRight,
                                  child: Image(
                                    image: AppImages.trashIcon,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Presidency Cakesy",
                                    style: kCartCardTitle,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "Presidency Cakesy is all about its flavour to make sure that it has the best taste of velvet reciepies into its carisma.",
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  style: kCartCardBody,
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "₦34,699",
                                      style: kCartCardTitle,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: const BoxDecoration(
                                            borderRadius:
                                                kBoxRadiusVerticalRight,
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      AppColors.lighterOrange),
                                              padding: MaterialStatePropertyAll(
                                                  EdgeInsets.zero),
                                            ),
                                            child: const Icon(
                                              Icons.add,
                                              color: AppColors.orange,
                                              size: 12,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        const Text(
                                          "01",
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: const BoxDecoration(
                                            borderRadius:
                                                kBoxRadiusVerticalRight,
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      AppColors.orange),
                                              padding: MaterialStatePropertyAll(
                                                  EdgeInsets.zero),
                                            ),
                                            child: const Icon(
                                              Icons.horizontal_rule,
                                              color: AppColors.white,
                                              size: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
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
