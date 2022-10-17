import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/core/widgets/secondary_appbar_text.dart';
import 'package:stea/screens/prayers_page/widgets/button.dart';
import 'package:stea/screens/prayers_page/widgets/textFormWidget.dart';

import '../../core/utils/app_colors/appColors.dart';

class PrayerScreen extends StatelessWidget {
  const PrayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.darkBlueColour),
        backgroundColor: Colors.white,
        title: SecondaryAppBarText(
          title: "Prayers",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 24.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.0.h,
              ),
              Text(
                "Do you need a prayer?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0.sp),
              ),
              SizedBox(
                height: 16.0.h,
              ),
              Text(
                "Complete the form below to submit your prayer request and one of our prayer minister will pray in agreement with you.",
                style: TextStyle(color: Colors.black, fontSize: 14.0.sp),
              ),
              SizedBox(height: 16.0.h),
              Form(
                child: Column(
                  children: [
                    TextInput(
                      label: "Name",
                      hintT: 'Fill in your full name',
                      inputType: TextInputType.text,
                    ),
                    SizedBox(height: 16.0.h),
                    TextInput(
                      label: "Phone number",
                      hintT: 'Enter your full name',
                      inputType: TextInputType.number,
                    ),
                    SizedBox(height: 16.0.h),
                    TextInput(
                      mnLine: 5,
                      label: "prayer request",
                      hintT: 'Write your prayer request here',
                      inputType: TextInputType.text,
                    ),
                    SizedBox(height: 16.0.h),
                    CustomTextButton(
                      onSubmit: () {},
                      label: "Send Request",
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
