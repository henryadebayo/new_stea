import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/core/utils/app_colors/appColors.dart';

import '../../../core/utils/app_textStyles/appTextStyle.dart';

class SignUpSelectionWidget extends StatefulWidget {
  final String title;
  final String subTitle;
  late bool? isSelected;

  SignUpSelectionWidget({
    required this.title,
    required this.subTitle,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpSelectionWidget> createState() => _SignUpSelectionWidgetState();
}

class _SignUpSelectionWidgetState extends State<SignUpSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.0.r),
      onTap: () {
        setState(() {
          (widget.isSelected == true)
              ? widget.isSelected = true
              : widget.isSelected = false;
        });
      },
      child: Container(
        height: 135.0.h,
        width: 155.0.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0.r),
            border: Border.all(
                width: 3.0,
                color: (widget.isSelected == true)
                    ? AppColors.ojButtonBlueColour
                    : Colors.grey)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
          child: Column(
            children: [
              Container(
                height: 35.0.h,
                width: 40.0.w,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10.0.r)),
              ),
              SizedBox(
                height: 8.0.h,
              ),
              Text(
                widget.title,
                style: AppTextStyle.blackBold,
              ),
              SizedBox(
                height: 8.0.h,
              ),
              Text(
                widget.subTitle,
                textAlign: TextAlign.center,
                style: AppTextStyle.blackLight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
