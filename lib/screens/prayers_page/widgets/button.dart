import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_colors/appColors.dart';

class CustomSocialTextButton extends StatelessWidget {
  CustomSocialTextButton(
      {Key? key,
      this.label,
      this.buttonColor,
      this.textColor,
      this.width,
      this.height,
      this.logo,
      this.LogoSpacewidth,
      required this.onSubmit})
      : super(key: key);

  final Color? buttonColor;
  final Color? textColor;
  final String? label;
  final double? width;
  final double? LogoSpacewidth;
  final double? height;
  final String? logo;
  var onSubmit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 55.0,
      width: width ?? MediaQuery.of(context).size.width - 50,
      child: TextButton(
          onPressed: onSubmit,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(logo!),
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: LogoSpacewidth ?? 10.0.w,
              ),
              Text(
                "$label",
                style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontSize: 17.0,
                ),
              ),
            ],
          ),
          style: TextButton.styleFrom(
              backgroundColor: buttonColor ?? AppColors.ojButtonBlueColour)),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  CustomTextButton(
      {Key? key,
      this.label,
      this.buttonColor,
      this.textColor,
      this.width,
      this.height,
      this.logo,
      required this.onSubmit})
      : super(key: key);

  final Color? buttonColor;
  final Color? textColor;
  final String? label;
  final double? width;
  final double? height;
  final String? logo;
  var onSubmit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 55.0,
      width: width ?? MediaQuery.of(context).size.width - 50,
      child: TextButton(
          onPressed: onSubmit,
          child: Text(
            "$label",
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: 17.0,
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: buttonColor ??  AppColors.ojButtonBlueColour)),
    );
  }
}
