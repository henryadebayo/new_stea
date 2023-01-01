import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors/appColors.dart';
import '../../../core/utils/app_textStyles/appTextStyle.dart';

class UpComingEventWidget extends StatelessWidget {
  const UpComingEventWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 180.0.h,
        width: 340.0.w,
        decoration: BoxDecoration(
            color: AppColors.boxLightBlueColour,
            borderRadius: BorderRadius.circular(8.0.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 12.0.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upcoming Event",
                    style: AppTextStyle.BlueBold.copyWith(
                        fontSize: 15.0.sp, color: AppColors.darkBlueColour),
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Text(
                    "100 random acts\nof kindness.",
                    style: AppTextStyle.BlackBold.copyWith(fontSize: 24.0.sp),
                  ),
                  SizedBox(
                    height: 16.0.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled_sharp,
                        color: AppColors.darkBlueColour,
                      ),
                      SizedBox(
                        width: 8.0.w,
                      ),
                      Text(
                        "Friday",
                        style: AppTextStyle.BlackMedium.copyWith(
                            fontSize: 16.0.sp),
                      ),
                      SizedBox(
                        width: 8.0.w,
                      ),
                      Text(
                        "5:30pm",
                        style: AppTextStyle.BlackMedium.copyWith(
                            fontSize: 16.0.sp),
                      ),
                      SizedBox(
                        width: 8.0.w,
                      ),
                      Text(
                        "GMT",
                        style: AppTextStyle.BlackMedium.copyWith(
                            fontSize: 16.0.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: AppColors.darkBlueColour,
                      ),
                      SizedBox(
                        width: 8.0.w,
                      ),
                      Text(
                        "No: 5 Gold Coast Road, SG.",
                        style: AppTextStyle.BlackMedium.copyWith(
                            fontSize: 16.0.sp),
                      ),
                    ],
                  ),
                ],
              ),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    "20",
                    style: AppTextStyle.BlackBold.copyWith(fontSize: 24.0.sp),
                  ),
                  Text(
                    "Sep",
                    style: AppTextStyle.BlackMedium.copyWith(fontSize: 20.0.sp),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
