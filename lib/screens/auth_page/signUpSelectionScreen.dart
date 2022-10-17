import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/widgets/secondary_appbar_text.dart';

class SelectSignUpType extends StatelessWidget {
  const SelectSignUpType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: SecondaryAppBarText(
            title: 'Choose Account Type',
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              Container(
                height: 147.0.h,
                width: 145.0.w,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0.r)),
              )
            ],
          ),
        ));
  }
}
