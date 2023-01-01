import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryAppBarText extends StatelessWidget {
  final String title;
  const SecondaryAppBarText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0.sp),
    );
  }
}
