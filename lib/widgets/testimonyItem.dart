import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class testimonyItem extends StatelessWidget {
  String? testifyerName;
  String? testifyerText;
  testimonyItem({Key? key, this.testifyerName, this.testifyerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
       width: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(image: AssetImage("assets/images/beautiful-bright-blue-bloom-petals-dew.jpg"),
          fit: BoxFit.cover,
        ),

        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 20.0.h, left: 20.0.w),
            child: Text(
              testifyerName ?? "no name",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20.0.sp),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 10.0.w, right: 10.0.w, top: 14.0.h),
              child: Text(
                testifyerText ?? "No test",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0.sp,
                          ),
              )),
        ],
      ),
    );
  }
}
