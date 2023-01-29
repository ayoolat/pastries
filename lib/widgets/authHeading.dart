import 'package:flutter/cupertino.dart';

import '../utils/config/images.dart';
import '../utils/constants.dart';

class AuthHeading extends StatelessWidget {
  final List<Widget> children;
  final double heightFactor;
  const AuthHeading({
    Key? key,
    required this.children,
    required this.heightFactor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: heightFactor,
      child: Container(
        width: double.infinity,
        decoration: kBackgroundImage(AppImages.authBackground),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 52, 25, 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [const Image(image: AppImages.logo), ...children]),
        ),
      ),
    );
  }
}
