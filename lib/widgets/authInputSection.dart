import 'package:flutter/cupertino.dart';

import '../utils/config/colors.dart';

class AuthInputsSection extends StatelessWidget {
  final List<Widget> children;
  final double heightFactor;
  final double topPadding;
  const AuthInputsSection(
      {Key? key,
      required this.children,
      required this.heightFactor,
      required this.topPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: heightFactor,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(13),
              topRight: Radius.circular(13),
            ),
            color: AppColors.white,
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(25, topPadding, 25, 20),
            child: Column(
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
