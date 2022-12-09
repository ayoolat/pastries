import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class authBackground extends StatelessWidget {
  final List<Widget> children;
  const authBackground({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: double.infinity,
        height: 500,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: children,
          ),
        ),
      ),
    );
  }
}
