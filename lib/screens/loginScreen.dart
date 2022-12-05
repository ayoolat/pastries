import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/config/colors.dart';
import '../utils/config/images.dart';
import '../utils/constants.dart';
import '../widgets/inputField.dart';
import '../widgets/stretchedButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            FractionallySizedBox(
              heightFactor: 0.45,
              child: Container(
                width: double.infinity,
                decoration: kBackgroundImage(AppImages.authBackground),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 40, 25, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Image(image: AppImages.logo),
                      SizedBox(
                        height: 85.0,
                      ),
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            color: AppColors.white),
                      ),
                      Text(
                        'Login with your details to continue',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 0.57,
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
                    padding: const EdgeInsets.fromLTRB(25, 60, 25, 20),
                    child: Column(
                      children: [
                        const AuthTextField(
                          icon: Icon(Icons.alternate_email),
                          hintText: 'Email Address',
                          obscureText: false,
                        ),
                        const SizedBox(height: 10),
                        const AuthTextField(
                          icon: Icon(Icons.remove_red_eye_rounded),
                          hintText: 'Password',
                          obscureText: true,
                        ),
                        const SizedBox(height: 10),
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
                        const SizedBox(height: 10),
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
                          height: 110,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don’t have an account? ',
                              style: kAuthTextStyle,
                            ),
                            GestureDetector(
                              onTap: () {
                                print('tapped');
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: AppColors.orange),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
