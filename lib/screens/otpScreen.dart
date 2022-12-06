import 'package:flutter/cupertino.dart';

import '../widgets/authBackground.dart';
import '../widgets/authHeading.dart';
import '../widgets/authInputSection.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const authBackground(
      children: [
        AuthHeading(
          heightFactor: 0.30,
          children: [],
        ),
        AuthInputsSection(
          heightFactor: 0.8,
          children: [],
        )
      ],
    );
  }
}
