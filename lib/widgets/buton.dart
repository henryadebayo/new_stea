import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/welcomePage.dart';
import '../utils/app_colors/appColors.dart';

class Button extends StatelessWidget {
  final String? labelText;
  final double? width;
  final double? heigth;
  final String? styles;
  const Button({Key? key, this.labelText, this.heigth, this.width, this.styles}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(100.0.r)),
        height: heigth,
        width: width,
        child: Center(
            child: Text(
          "$labelText",
          style: const TextStyle(fontFamily: "GoogleSans", color: Colors.blue),
        )));
  }
}

class welcomeButton extends StatelessWidget {
  final String labelText;
  final double containerHeight;
  final double containerWidth;
  var onPressed;

  welcomeButton(
      {Key? key, required this.labelText,
      required this.containerHeight,
      required this.containerWidth,
      required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(40.0.r),
      child: Container(
        height: containerHeight, //60.0,
        width: containerWidth, //170.0,
        decoration: BoxDecoration(
            color: registerButtonColour,
            borderRadius: BorderRadius.circular(12.0.r)),
        child: Center(
          child: Text(
            labelText, // "Already a Member",
            style: const TextStyle(fontFamily: "GoogleSans", color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class RoundWhiteButton extends StatelessWidget {
  final String label;
  final double height;
  final double? width;
  var onTap;
   RoundWhiteButton({Key? key,
    required this.label,
    required this.height,
    this.width,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20.0, bottom: 40.0),
      height: height,
      width: width,
      child:
    ElevatedButton(
      style:  ElevatedButton.styleFrom(
        elevation: 0.0,
        backgroundColor: Colors.white,
        minimumSize: const Size(88, 36),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0.r),
          side: BorderSide(color: AppColors.darkBlueColour),
        ),
      ),
      onPressed: onTap,
     child: Text(label, style: TextStyle(fontSize: 20.0.sp, color:AppColors.darkBlueColour )),
    ),
    );
  }
}
