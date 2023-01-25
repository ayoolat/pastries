import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastries/widgets/bottomNav.dart';

import '../utils/config/colors.dart';
import '../utils/config/images.dart';
import '../utils/constants.dart';
import '../widgets/CartCardWidget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _selectedIndex = 3;
  ScrollController _scrollController = ScrollController();
  int quantity = 0;

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
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Cart", style: kSubDashboardHeading),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  CartCardWidget(
                    image: AppImages.cartItem,
                    name: "Presidency Cakesy",
                    description:
                        "Presidency Cakesy is all about its flavour to make sure that it has the best taste of velvet reciepies into its carisma.",
                    price: 35000,
                    quantity: quantity,
                  ),
                  CartCardWidget(
                    image: AppImages.cartItem,
                    name: "Presidency Cakesy",
                    description:
                        "Presidency Cakesy is all about its flavour to make sure that it has the best taste of velvet reciepies into its carisma.",
                    price: 35000,
                    quantity: quantity,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 191,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: const BoxDecoration(
                    color: AppColors.lighterOrange,
                    borderRadius: kBoxFullRadius),
                child: Column(
                  children: const [
                    CartSummaryCard(
                      title: "Subtotal",
                      value: "₦34,699",
                      titleStyle: kAuthTextStyle,
                      valueStyle: kAuthTextStyle,
                    ),
                    CartSummaryCard(
                      title: "Tax Fee",
                      value: "₦699",
                      titleStyle: kAuthTextStyle,
                      valueStyle: kAuthTextStyle,
                    ),
                    CartSummaryCard(
                      title: "Delivery Fee",
                      value: "₦7,220",
                      titleStyle: kAuthTextStyle,
                      valueStyle: kAuthTextStyle,
                    ),
                    Divider(
                      color: AppColors.orange,
                      thickness: 1.5,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CartSummaryCard(
                      title: "Total",
                      value: "₦34,699",
                      titleStyle: kTotalSize,
                      valueStyle: kTotalSize,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(AppColors.orange),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.all(15),
                    ),
                  ),
                  child: const Text(
                    "Checkout",
                    style: kOnBoardSmallText,
                  ),
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

class CartSummaryCard extends StatelessWidget {
  final String title;
  final String value;
  final TextStyle titleStyle;
  final TextStyle valueStyle;

  const CartSummaryCard({
    required this.title,
    required this.value,
    required this.titleStyle,
    required this.valueStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: titleStyle,
          ),
          Text(
            value,
            style: valueStyle,
          )
        ],
      ),
    );
  }
}
