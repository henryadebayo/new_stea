import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/core/widgets/auth_form_widget.dart';
import 'package:stea/screens/auth_page/widgets/auth_label_widget.dart';
import 'package:stea/screens/bottom_navigation/bottomNavigation.dart';
import 'package:stea/screens/prayers_page/widgets/button.dart';

import '../../core/utils/app_colors/appColors.dart';
import '../../core/widgets/appbar_text_widget.dart';
import 'SignIn_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: AppColors.darkBlueColour,
        title: const AppBarText(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            children: <Widget>[
              AuthLabelWidget(
                header: "Signing up as a member",
                header2:
                    "Kindly provide us with your correct details in\nthe form below",
              ),
              SizedBox(height: 20.0.h),
              Form(
                key: formKey,
                child: Column(children: <Widget>[
                  buildFirstNameFormField(),
                  SizedBox(
                    height: 20.h,
                  ),
                  buildLastNameFormField(),
                  SizedBox(
                    height: 20.h,
                  ),
                  buildEmailAddressFormField(),
                  SizedBox(
                    height: 20.h,
                  ),
                  buildPhoneNumberFormField(),
                  SizedBox(
                    height: 20.h,
                  ),
                  buildAddressFormField(),
                ]),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              InkWell(
                  onLongPress: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (ctx) {
                      return const BottomNavigationWidget();
                    }));
                  },
                  child: CustomTextButton(label: "Proceed", onSubmit: () {})),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //SizedBox(width: 10.0,),
                  const Center(
                    child: Text(
                      "Already a",
                      style: TextStyle(
                          fontFamily: "GoogleSans", color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5.0.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => SignInScreen()));
                    },
                    child: Text(
                      "Member",
                      style: TextStyle(
                          fontFamily: "GoogleSans", color: Colors.indigo[800]),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void onPressed() {
    var form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      //var _firstname;

      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => const BottomNavigationWidget()));
    }
  }
}
