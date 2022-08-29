import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/utils/app_textStyles/appTextStyle.dart';
import 'package:stea/widgets/buildAppbarLogo.dart';
import 'package:stea/widgets/const.dart';
import 'package:stea/widgets/quickAccessContent.dart';

import '../../utils/app_colors/appColors.dart';
import '../prayers_page/prayer_screen.dart';
import '../sermons_page/sermons_screen.dart';

class HomeScreen extends StatefulWidget {
  final String? userName;
  const HomeScreen({this.userName});

  @override
  _HomeScreenState createState() => _HomeScreenState(firstName: userName);
}

class _HomeScreenState extends State<HomeScreen> {
  final String? firstName;
  _HomeScreenState({this.firstName});

  List<Widget> Images = [
    Image(
      image: AssetImage("assets/images/stea.jpg"),
      fit: BoxFit.cover,
      height: 120.0.h,
      width: 300.0.w,
    ),
    Image(
      image: AssetImage("assets/images/stea2.jpg"),
      fit: BoxFit.cover,
      height: 120.0.h,
      width: 300.0.w,
    ),
    Image(
      image: AssetImage("assets/images/stea3.jpg"),
      fit: BoxFit.cover,
      height: 120.0.h,
      width: 300.0.w,
    ),
    Image(
      image: AssetImage("assets/images/stea4.jpg"),
      fit: BoxFit.cover,
      height: 120.0.h,
      width: 300.0.w,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: AppColors.darkBlueColour,
        title: Text(
          "STEA",
          style: TextStyle(
              fontFamily: KfontFamily,
              letterSpacing: 18.0,
              fontWeight: FontWeight.bold,
              fontSize: 20.0.sp),
        ),
        actions: <Widget>[
          buildShoppingCart(),
          SizedBox(width: 20.0.w),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0.w,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 8.0.h,
              ),
              Text(
                "Hi Enike",
                style: AppTextStyle.Blacklight.copyWith(fontSize: 18.0.sp),
              ),
              Text(
                "Welcome",
                style: AppTextStyle.Blacklight.copyWith(fontSize: 20.0.sp),
              ),
            ]),
          ),
          SizedBox(height: 8.0.h),
          Padding(
            padding: EdgeInsets.only(left: 10.0.w, right: 10.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120.0.h,
                  width: double.infinity,
                  child: CarouselSlider(
                      items: Images,
                      options: CarouselOptions(
                        height: 120.0.h,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      )),
                ),
                SizedBox(height: 16.0.h),
                Text(
                  "Quick Access.",
                  style: TextStyle(fontFamily: KfontFamily, fontSize: 18.0.sp),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                const QuickAccessIcon(),
                SizedBox(height: 30.0.h),
                SizedBox(
                  height: 150.0.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const SermonsScreen()));
                          },
                          child: Container(
                            height: 150.0.h,
                            width: double.infinity.w,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/icon2.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0.r),
                            ),
                            child: Center(
                                child: Text(
                              "sermons",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0.sp,
                              ),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0.w),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const PrayerScreen()));
                          },
                          child: Container(
                            height: 150.0.h,
                            width: double.infinity.w,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/icon1.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0.r)),
                            child: Center(
                                child: Text(
                              "Prayers",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0.sp,
                                  fontFamily: "GoogleSans"),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
