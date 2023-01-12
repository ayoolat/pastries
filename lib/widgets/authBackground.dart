import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class authBackground extends StatelessWidget {
  final List<Widget> children;
  const authBackground({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height + 150,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: children,
          ),
        ),
      ),
    );
  }
}
