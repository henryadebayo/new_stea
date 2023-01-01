import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/utils/app_colors/appColors.dart';

class CustomCurvedTabBar extends StatelessWidget {
  final String firstLabel;
  final String secondLabel;

  const CustomCurvedTabBar({
    required this.firstLabel,
    required this.secondLabel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: Colors.black,
      labelColor: Colors.white,
      labelStyle: const TextStyle(fontWeight: FontWeight.w500),
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0.r),
        color: AppColors.ojButtonBlueColour,
      ),
      tabs: [
        Tab(
          text: firstLabel,
        ),
        Tab(text: secondLabel),
      ],
    );
  }
}
