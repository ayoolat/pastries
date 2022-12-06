import 'package:flutter/cupertino.dart';

import '../routes.dart';
import '../utils/config/colors.dart';
import '../utils/constants.dart';

class AuthBottomHeader extends StatelessWidget {
  final String text;
  final String actionText;
  final VoidCallback onTap;
  const AuthBottomHeader(
      {Key? key,
      required this.text,
      required this.actionText,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: kAuthTextStyle,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionText,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: AppColors.orange),
          ),
        ),
      ],
    );
  }
}
