import 'package:flutter/cupertino.dart';

import '../utils/constants.dart';

class ProfileItem extends StatelessWidget {
  final AssetImage image;
  final String text;
  final VoidCallback ontap;
  const ProfileItem({
    required this.image,
    required this.text,
    required this.ontap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Image(image: image),
            ),
            Text(
              text,
              style: kProfileItemTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
