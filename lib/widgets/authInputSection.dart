import 'package:flutter/cupertino.dart';

import '../utils/config/colors.dart';

class AuthInputsSection extends StatelessWidget {
  final List<Widget> children;
  final double heightFactor;
  const AuthInputsSection(
      {Key? key, required this.children, required this.heightFactor})
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
            padding: const EdgeInsets.fromLTRB(25, 80, 25, 20),
            child: Column(
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
