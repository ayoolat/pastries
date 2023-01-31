import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastries/utils/config/colors.dart';

import '../utils/config/images.dart';
import '../utils/constants.dart';

class ViewingScreen extends StatefulWidget {
  const ViewingScreen({Key? key}) : super(key: key);

  @override
  State<ViewingScreen> createState() => _ViewingScreenState();
}

class _ViewingScreenState extends State<ViewingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.orange,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Column(
                children: const [
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Image(
                        image: AppImages.cheapTrills,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image(image: AppImages.sliderIcon)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleCakeDetails(
                      text: "Presidency Cakesy",
                      style: kSingleTitle,
                      icon: AppImages.titleIcon,
                    ),
                    SizedBox(
                      child: SingleCakeDetails(
                        text:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style: kSingleDescription,
                        softWrap: true,
                        icon: AppImages.descriptionIcon,
                        maxlines: 4,
                      ),
                    ),
                    SingleCakeDetails(
                      text: "Gluclose, Sugar, Ginger, Butter e.t.c",
                      style: kSingleDescription,
                      icon: AppImages.ingredientsIcon,
                    ),
                    SingleCakeDetails(
                      text: "N32,650",
                      style: kSinglePrice,
                      icon: AppImages.priceIcon,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          print("");
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.orange),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.all(15),
                          ),
                        ),
                        child: const Text(
                          "Add to Cart",
                          style: kOnBoardSmallText,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SingleCakeDetails extends StatelessWidget {
  final TextStyle style;
  final String text;
  bool? softWrap;
  final AssetImage icon;
  int? maxlines;
  SingleCakeDetails(
      {Key? key,
      required this.text,
      required this.style,
      this.softWrap,
      required this.icon,
      this.maxlines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: Image(
            image: icon,
          ),
        ),
        Text(
          text,
          style: style,
          softWrap: softWrap,
          maxLines: maxlines,
        ),
      ],
    );
  }
}
