import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCurvedTabBar extends StatelessWidget {
  String firstLabel;
  String secondLabel;

  CustomCurvedTabBar({
    required this.firstLabel,
    required this.secondLabel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.black,
      labelStyle: const TextStyle(fontWeight: FontWeight.w500),
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0.r), color: Colors.white),
      tabs: [
        Tab(
          text: firstLabel,
        ),
        Tab(text: secondLabel),
      ],
    );
  }
}
