import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/screens/auth_page/widgets/signUpSelectionWidget.dart';
import 'package:stea/screens/prayers_page/widgets/button.dart';

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
              SizedBox(
                height: 16.0.h,
              ),
              const Text(
                "Select your preferred sign up choice for proper identification.",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24.0.h,
              ),
              Wrap(
                children: [
                  SignUpSelectionWidget(
                    title: "Member",
                    subTitle:
                        "You are planning to use\nour platform as a member",
                  ),
                  SizedBox(
                    width: 16.0.w,
                  ),
                  SignUpSelectionWidget(
                    title: "Registered Pastor",
                    subTitle: "Your account has to be authenticated",
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0.h),
                    child: SignUpSelectionWidget(
                      title: "Guest",
                      subTitle: "Join us and become part of the Stea family",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0.h,
              ),
              CustomTextButton(
                onSubmit: () {},
                label: "Proceed",
              )
            ],
          ),
        ));
  }
}
