import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routes.dart';
import '../utils/constants.dart';
import '../widgets/authBackground.dart';
import '../widgets/authBottomHeader.dart';
import '../widgets/authHeading.dart';
import '../widgets/authInputSection.dart';
import '../widgets/inputField.dart';
import '../widgets/stretchedButton.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return authBackground(
      children: [
        const AuthHeading(
          heightFactor: 0.35,
          children: [
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Create your account',
              style: kAuthMainHeadingTextStyle,
            ),
            Text(
              'Put in your details to get started',
              style: kAuthSubHeadingTextStyle,
            )
          ],
        ),
        AuthInputsSection(
          topPadding: 50,
          heightFactor: 0.685,
          children: [
            const AuthTextField(
              icon: Icon(Icons.person),
              hintText: 'First Name',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            const AuthTextField(
              icon: Icon(Icons.person),
              hintText: 'Last Name',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            const AuthTextField(
              icon: Icon(Icons.alternate_email),
              hintText: 'Email Address',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            const AuthTextField(
              icon: Icon(Icons.phone),
              hintText: 'Phone Number',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            const AuthTextField(
              icon: Icon(Icons.remove_red_eye_rounded),
              hintText: 'Password',
              obscureText: false,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: StretchedButton(
                onPressed: () {
                  AppNavigator.push(Routes.OTP);
                },
                text: 'Register',
              ),
            ),
            const SizedBox(height: 40),
            AuthBottomHeader(
              text: 'Already have an account? ',
              actionText: 'Log in',
              onTap: () {
                AppNavigator.push(Routes.Login);
              },
            )
          ],
        )
      ],
    );
  }
}
