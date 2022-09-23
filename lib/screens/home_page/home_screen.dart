import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/screens/home_page/widgets/quickAccessContent.dart';
import 'package:stea/utils/app_textStyles/appTextStyle.dart';
import 'package:stea/widgets/buildAppbarLogo.dart';
import 'package:stea/widgets/const.dart';

import '../../utils/app_colors/appColors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _HomeScreenState();

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style:
                            AppTextStyle.Blacklight.copyWith(fontSize: 16.0.sp),
                      ),
                      Text(
                        "Henry Adebayo",
                        style: AppTextStyle.BlackMedium.copyWith(
                            fontSize: 18.0.sp),
                      ),
                    ],
                  ),
                  Stack(children: [
                    Icon(
                      Icons.notifications,
                      size: 30.0,
                      color: AppColors.darkBlueColour,
                    ),
                    Positioned(
                      left: 17.0,
                      top: 3.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 5.0,
                        child: Center(
                          child: CircleAvatar(
                            radius: 4.0,
                            backgroundColor: AppColors.darkBlueColour,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 8.0.h,
            ),
            Center(
              child: Container(
                height: 120.0.h,
                width: 330.0.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0.r)),
                child: CarouselSlider(
                    items: Images,
                    options: CarouselOptions(
                      height: 120.0.h,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      padEnds: false,
                      aspectRatio: 0 / 0,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 0.9,
                    )),
              ),
            ),
            SizedBox(height: 16.0.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Quick Access",
                      style:
                          AppTextStyle.BlackMedium.copyWith(fontSize: 16.0.sp)),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  const QuickAccessIcon(),
                  SizedBox(height: 30.0.h),
                  Text("Daily Verse",
                      style:
                          AppTextStyle.BlackMedium.copyWith(fontSize: 16.0.sp)),
                  Container(
                    height: 80.0.h,
                    width: 330.0.w,
                    child: const Image(
                      image: AssetImage("assets/images/ds.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 30.0.h),
                  Text("Upcoming Programs/Services",
                      style:
                          AppTextStyle.BlackMedium.copyWith(fontSize: 16.0.sp)),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Center(
                    child: Container(
                      height: 180.0.h,
                      width: 340.0.w,
                      decoration: BoxDecoration(
                          color: AppColors.boxLightBlueColour,
                          borderRadius: BorderRadius.circular(8.0.r)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0.w, vertical: 12.0.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Upcoming Event",
                                  style: AppTextStyle.BlueBold.copyWith(
                                      fontSize: 15.0.sp,
                                      color: AppColors.darkBlueColour),
                                ),
                                SizedBox(
                                  height: 5.0.h,
                                ),
                                Text(
                                  "100 random acts\nof kindness.",
                                  style: AppTextStyle.BlackBold.copyWith(
                                      fontSize: 24.0.sp),
                                ),
                                SizedBox(
                                  height: 16.0.h,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time_filled_sharp,
                                      color: AppColors.darkBlueColour,
                                    ),
                                    SizedBox(
                                      width: 8.0.w,
                                    ),
                                    Text(
                                      "Friday",
                                      style: AppTextStyle.BlackMedium.copyWith(
                                          fontSize: 16.0.sp),
                                    ),
                                    SizedBox(
                                      width: 8.0.w,
                                    ),
                                    Text(
                                      "5:30pm",
                                      style: AppTextStyle.BlackMedium.copyWith(
                                          fontSize: 16.0.sp),
                                    ),
                                    SizedBox(
                                      width: 8.0.w,
                                    ),
                                    Text(
                                      "GMT",
                                      style: AppTextStyle.BlackMedium.copyWith(
                                          fontSize: 16.0.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8.0.h,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_rounded,
                                      color: AppColors.darkBlueColour,
                                    ),
                                    SizedBox(
                                      width: 8.0.w,
                                    ),
                                    Text(
                                      "No: 5 Gold Coast Road, SG.",
                                      style: AppTextStyle.BlackMedium.copyWith(
                                          fontSize: 16.0.sp),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Wrap(
                              direction: Axis.vertical,
                              children: [
                                Text(
                                  "20",
                                  style: AppTextStyle.BlackBold.copyWith(
                                      fontSize: 24.0.sp),
                                ),
                                Text(
                                  "Sep",
                                  style: AppTextStyle.BlackMedium.copyWith(
                                      fontSize: 20.0.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       height: 80.0.h,
                  //       width: 330.0.w,
                  //       decoration: BoxDecoration(
                  //           color: Colors.red,
                  //           borderRadius: BorderRadius.circular(10.0.r)),
                  //     ),
                  //     Positioned(
                  //       child: Container(
                  //         height: 25.0.h,
                  //         width: 35.0.w,
                  //         decoration: BoxDecoration(
                  //             color: AppColors.boxYellowColour,
                  //             borderRadius: BorderRadius.circular(10.0.r)),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ]),
        ),
      ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.symmetric(
      //         horizontal: 8.0.w,
      //       ),
      //       child:
      //           Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //         SizedBox(
      //           height: 8.0.h,
      //         ),
      //         Text(
      //           "Hi Enike",
      //           style: AppTextStyle.Blacklight.copyWith(fontSize: 18.0.sp),
      //         ),
      //         Text(
      //           "Welcome",
      //           style: AppTextStyle.Blacklight.copyWith(fontSize: 20.0.sp),
      //         ),
      //       ]),
      //     ),
      //     SizedBox(height: 8.0.h),
      //     Padding(
      //       padding: EdgeInsets.only(left: 10.0.w, right: 10.0.w),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           SizedBox(
      //             height: 120.0.h,
      //             width: double.infinity,
      //             child:
      //             CarouselSlider(
      //                 items: Images,
      //                 options: CarouselOptions(
      //                   height: 120.0.h,
      //                   enlargeCenterPage: true,
      //                   autoPlay: true,
      //                   aspectRatio: 16 / 9,
      //                   autoPlayCurve: Curves.fastOutSlowIn,
      //                   autoPlayAnimationDuration:
      //                       const Duration(milliseconds: 800),
      //                   viewportFraction: 0.8,
      //                 )),
      //           ),
      //           SizedBox(height: 16.0.h),
      //           Text(
      //             "Quick Access.",
      //             style: TextStyle(fontFamily: KfontFamily, fontSize: 18.0.sp),
      //           ),
      //           SizedBox(
      //             height: 10.0.h,
      //           ),
      //           const QuickAccessIcon(),
      //           SizedBox(height: 30.0.h),
      //           SizedBox(
      //             height: 150.0.h,
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 Expanded(
      //                   child: GestureDetector(
      //                     onTap: () {
      //                       Navigator.of(context).push(MaterialPageRoute(
      //                           builder: (BuildContext context) =>
      //                               const SermonsScreen()));
      //                     },
      //                     child: Container(
      //                       height: 150.0.h,
      //                       width: double.infinity.w,
      //                       decoration: BoxDecoration(
      //                         image: const DecorationImage(
      //                           image: AssetImage("assets/images/icon2.png"),
      //                           fit: BoxFit.cover,
      //                         ),
      //                         borderRadius: BorderRadius.circular(10.0.r),
      //                       ),
      //                       child: Center(
      //                           child: Text(
      //                         "sermons",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 20.0.sp,
      //                         ),
      //                       )),
      //                     ),
      //                   ),
      //                 ),
      //                 SizedBox(width: 10.0.w),
      //                 Expanded(
      //                   child: GestureDetector(
      //                     onTap: () {
      //                       Navigator.of(context).push(MaterialPageRoute(
      //                           builder: (BuildContext context) =>
      //                               const PrayerScreen()));
      //                     },
      //                     child: Container(
      //                       height: 150.0.h,
      //                       width: double.infinity.w,
      //                       decoration: BoxDecoration(
      //                           image: const DecorationImage(
      //                             image: AssetImage("assets/images/icon1.png"),
      //                             fit: BoxFit.cover,
      //                           ),
      //                           borderRadius: BorderRadius.circular(10.0.r)),
      //                       child: Center(
      //                           child: Text(
      //                         "Prayers",
      //                         style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 20.0.sp,
      //                             fontFamily: "GoogleSans"),
      //                       )),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
