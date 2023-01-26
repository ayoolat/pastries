import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastries/utils/config/colors.dart';

import '../utils/config/images.dart';
import '../utils/constants.dart';

class ViewingScreen extends StatefulWidget {
  const ViewingScreen({Key? key}) : super(key: key);

  @override
  State<ViewingScreen> createState() => _ViewingScreenState();
}

class _ViewingScreenState extends State<ViewingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.orange,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 30),
      ),
    );
  }
}
