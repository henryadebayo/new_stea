import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors/appColors.dart';
import '../prayers_page/widgets/button.dart';
import '../prayers_page/widgets/textFormWidget.dart';

class AddTestimonyScreen extends StatelessWidget {
  const AddTestimonyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.darkBlueColour),
        backgroundColor: Colors.white,
        title: Text(
          "Back",
          style: TextStyle(color: AppColors.darkBlueColour),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 24.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0.h,
              ),
              Center(
                child: Text(
                  "Share your Testimony",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0.sp),
                ),
              ),
              SizedBox(
                height: 16.0.h,
              ),
              Text(
                "Kindly share with the church what the Lord have done for you.",
                style: TextStyle(color: Colors.black, fontSize: 14.0.sp),
                textAlign: TextAlign.center,
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
                    SizedBox(height: 24.0.h),
                    TextInput(
                      mnLine: 5,
                      label: "Testimony",
                      hintT: 'Write your testimony request here',
                      inputType: TextInputType.text,
                    ),
                    SizedBox(height: 72.0.h),
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
