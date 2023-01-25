import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/config/colors.dart';
import '../utils/config/images.dart';
import '../utils/constants.dart';

class CartCardWidget extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String description;
  final int price;
  final int quantity;

  const CartCardWidget({
    Key? key,
    required this.image,
    required this.price,
    required this.description,
    required this.name,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              height: 153,
              decoration: BoxDecoration(
                borderRadius: kBoxRadiusVerticalLeft,
                boxShadow: [kShadowVertical],
              ),
              child: Image(
                image: image,
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        name,
                        style: kCartCardTitle,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      maxLines: 2,
                      style: kCartCardBody,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₦$price",
                          style: kCartCardTitle,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                borderRadius: kBoxRadiusVerticalRight,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      AppColors.lighterOrange),
                                  padding:
                                      MaterialStatePropertyAll(EdgeInsets.zero),
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
                            Text(
                              quantity.toString(),
                              style: const TextStyle(
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
                                borderRadius: kBoxRadiusVerticalRight,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      AppColors.orange),
                                  padding:
                                      MaterialStatePropertyAll(EdgeInsets.zero),
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
      ),
    );
  }
}
