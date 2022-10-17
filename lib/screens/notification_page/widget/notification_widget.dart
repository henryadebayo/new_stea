import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors/appColors.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0.h,
      width: MediaQuery.of(context).size.width - 10,
      color: AppColors.ojBlueColour3,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0.w),
            child: CircleAvatar(
              backgroundColor: AppColors.primary,
              radius: 8.0,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "A new book has just been uploaded to\ndevotional.. Do well to check it out!",
                style: TextStyle(fontSize: 16.0),
              ),
              Padding(
                padding: EdgeInsets.only(left: 270.0, top: 16.0.h),
                child: const Text("1 hour ago"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
