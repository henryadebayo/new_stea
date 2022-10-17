import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Strings.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "STEA",
      style: TextStyle(
          fontFamily: KfontFamily,
          letterSpacing: 18.0,
          fontWeight: FontWeight.bold,
          fontSize: 20.0.sp),
    );
  }
}
