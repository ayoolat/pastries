import 'package:flutter/cupertino.dart';

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
