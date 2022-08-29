import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestimonyCard extends StatelessWidget {
  final String? name;
  final String? testimony;
  const TestimonyCard({
    this.name,
    this.testimony,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0.r),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15.0.sp),
            ),
            SizedBox(
              height: 3.0.h,
            ),
            Row(
              children: [
                Text(
                  "Member",
                  style: TextStyle(color: Colors.grey[500], fontSize: 10.0.sp),
                ),
                const VerticalDivider(
                  color: Colors.white,
                  thickness: 2,
                  width: 2,
                ),
                Text(
                  "28 August 2022",
                  style: TextStyle(color: Colors.grey[500], fontSize: 10.0.sp),
                ),
              ],
            ),
            SizedBox(
              height: 8.0.h,
            ),
            Text(
              testimony!,
              style: TextStyle(color: Colors.black, fontSize: 15.0.sp),
            ),
          ],
        ),
      ),
    );
  }
}
