import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stea/data/Services/carousel_image_service.dart';
import 'package:stea/screens/bottom_navigation/bottomNavigation.dart';
import 'package:stea/widgets/sigIn_widget.dart';

import '../view_models/youTube_view_model.dart';
import 'alreadyMember.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? _firstname;
  final formKey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();
  CarouselServices gt = CarouselServices();

  @override
  Widget build(BuildContext context) {
    YouTubeViewModel testYt = context.watch<YouTubeViewModel>();
    YouTubeViewModel yt = context.watch<YouTubeViewModel>();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Fill In Your Details ",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoogleSans",
                      color: Colors.blue[900]),
                ),
                SizedBox(height: 40.0.h),
                Form(
                  key: formKey,
                  child: Column(children: <Widget>[
                    buildFirstNameFormField(name: _firstname),
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
                    onTap: onPressed,
                    onDoubleTap: () {
                    //  gt.listFiles();

                      //yt.getVideos();
                      // YTVideoModel hg = videoModelFromJson(
                      //     YoutubeServices.getYouTubeVideos(
                      //         "PLbd9-9nbCzE4GwQX6UL5MZcK571APZ5Yf", ""));
                      // print(data.toString());

                      // testYt.getVideos();
                      // if (testYt.loading) {
                      //   print("loading..");
                      // } else {
                      //   print("done");
                      //   print(testYt.yTVideos.toString());
                      // }

                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (ctx) {
                        return const BottomNavigationWidget();
                      }));
                    },
                    child: Container(
                      height: 50.0.h,
                      // width: 20.0,
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(04.0.r)),
                      child: const Center(
                          child: Text(
                        "Become a Member",
                        style: TextStyle(
                            fontFamily: "GoogleSans", color: Colors.white),
                      )),
                    )),
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                AlreadyMember()));
                      },
                      child: Text(
                        "Member",
                        style: TextStyle(
                            fontFamily: "GoogleSans",
                            color: Colors.indigo[800]),
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
      ),
    );
  }

  void onPressed() {
    var form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      //var _firstname;

      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) =>
              BottomNavigationWidget(userName: _firstname)));
    }
  }
}
