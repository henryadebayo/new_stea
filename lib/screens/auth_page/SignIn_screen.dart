import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/screens/auth_page/widgets/auth_label_widget.dart';

import '../../core/utils/app_colors/appColors.dart';
import '../../core/widgets/appbar_text_widget.dart';
import '../../core/widgets/auth_form_widget.dart';
import '../bottom_navigation/bottomNavigation.dart';
import '../prayers_page/widgets/button.dart';
import 'SignUp_screen.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

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
      body: Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        child: Column(
          children: <Widget>[
            AuthLabelWidget(
              header: "Sign In",
              header2: "Kindly fill in your correct login details.",
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
              ]),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => SignUpScreen()));
                  },
                  child: Text(
                    "Forgotten Password?",
                    style: TextStyle(
                        fontFamily: "GoogleSans", color: Colors.indigo[800]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0.h,
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
                    "Don't have an account",
                    style: TextStyle(
                        fontFamily: "GoogleSans", color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 5.0.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SignUpScreen()));
                  },
                  child: Text(
                    "Register",
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
    );
  }
}
