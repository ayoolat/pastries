import 'package:flutter/cupertino.dart';

import '../utils/constants.dart';

class DashboardHeadings extends StatelessWidget {
  final String text;
  const DashboardHeadings({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: kSubDashboardHeading,
      ),
    );
  }
}
