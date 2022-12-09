import 'package:flutter/cupertino.dart';
import 'package:pastries/utils/config/colors.dart';
import 'package:pinput/pinput.dart';

import '../utils/constants.dart';
import '../widgets/authBackground.dart';
import '../widgets/authBottomHeader.dart';
import '../widgets/authHeading.dart';
import '../widgets/authInputSection.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return authBackground(
      children: [
        const AuthHeading(
          heightFactor: 0.30,
          children: [],
        ),
        AuthInputsSection(
          topPadding: 100,
          heightFactor: 0.8,
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Enter code sent\nto your phone',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Enter the code sent to the number ',
                  style: kAuthTextStyle,
                ),
                Text(
                  ' +234 816 5064 457',
                  style: kOrangeTextStyle,
                )
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              child: Pinput(
                controller: pinController,
                focusNode: focusNode,
                androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  textStyle: const TextStyle(
                    fontSize: 22,
                    color: AppColors.lightOrange,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.lighterOrange,
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Didn\'t receive any code?',
              style: kAuthTextStyle,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Resend',
              style: kOrangeTextStyle,
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ],
    );
  }
}
