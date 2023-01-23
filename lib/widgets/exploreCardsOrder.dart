import 'package:flutter/cupertino.dart';

import 'exploreCard.dart';

class ExploreCardsOrder extends StatelessWidget {
  final int item1;
  final int item2;
  final AssetImage image1;
  final String text1;
  final AssetImage image2;
  final String text2;

  const ExploreCardsOrder({
    required this.item1,
    required this.item2,
    required this.image1,
    required this.text2,
    required this.image2,
    required this.text1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: item1,
          child: ExploreCard(
            image: image1,
            text: text1,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          flex: item2,
          child: ExploreCard(
            image: image2,
            text: text2,
          ),
        ),
      ],
    );
  }
}
