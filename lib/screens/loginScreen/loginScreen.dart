import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../routes.dart';
import '../../utils/config/colors.dart';
import '../../utils/constants.dart';
import '../../widgets/authBackground.dart';
import '../../widgets/authBottomHeader.dart';
import '../../widgets/authHeading.dart';
import '../../widgets/authInputSection.dart';
import '../../widgets/inputField.dart';
import '../../widgets/stretchedButton.dart';

class LoginScreen extends StatelessWidget {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return authBackground(
      children: [
        const AuthHeading(
          heightFactor: 0.45,
          children: [
            SizedBox(
              height: 85.0,
            ),
            Text(
              'Welcome Back',
              style: kAuthMainHeadingTextStyle,
            ),
            Text(
              'Login with your details to continue',
              style: kAuthSubHeadingTextStyle,
            )
          ],
        ),
        AuthInputsSection(
          topPadding: 80,
          heightFactor: 0.585,
          children: [
            const AuthTextField(
              icon: Icon(Icons.alternate_email),
              hintText: 'Email Address',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            AuthTextField(
              icon: _toogglePasswordObscurity(),
              hintText: 'Password',
              obscureText: hidePassword,
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                print('d');
              },
              child: const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              child: StretchedButton(
                onPressed: () {
                  print('');
                },
                text: 'Log In',
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            AuthBottomHeader(
              text: 'Don’t have an account? ',
              actionText: 'Sign Up',
              onTap: () {
                AppNavigator.push(Routes.Register);
              },
            )
          ],
        )
      ],
    );
  }

  Widget _toogglePasswordObscurity() {
    return !hidePassword
        ? GestureDetector(
            onTap: () {
              hidePassword = true;
            },
            child: const Text('Hide password'),
          )
        : GestureDetector(
            onTap: () {
              hidePassword = false;
            },
            child: const Icon(Icons.remove_red_eye_rounded),
          );
  }
}
