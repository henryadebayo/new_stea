import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stea/core/utils/app_textStyles/appTextStyle.dart';
import 'package:stea/core/widgets/buildAppbarLogo.dart';
import 'package:stea/screens/home_page/widgets/quickAccessContent.dart';
import 'package:stea/screens/home_page/widgets/up_coming_event_widget.dart';
import 'package:stea/screens/notification_page/Notification.dart';

import '../../core/utils/app_colors/appColors.dart';
import '../../core/widgets/appbar_text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _HomeScreenState();

  List<Widget> Images = [
    Image(
      image: const AssetImage("assets/images/stea.jpg"),
      fit: BoxFit.cover,
      height: 120.0.h,
      width: 300.0.w,
    ),
    Image(
      image: const AssetImage("assets/images/stea2.jpg"),
      fit: BoxFit.cover,
      height: 120.0.h,
      width: 300.0.w,
    ),
    Image(
      image: const AssetImage("assets/images/stea3.jpg"),
      fit: BoxFit.cover,
      height: 120.0.h,
      width: 300.0.w,
    ),
    Image(
      image: const AssetImage("assets/images/stea4.jpg"),
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
        title: const AppBarText(),
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
                  IconButton(
                    icon: Stack(children: [
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
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return const NotificationScreen();
                      }));
                    },
                  ),
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
                  Text("Today's Bible verse",
                      style:
                          AppTextStyle.BlackMedium.copyWith(fontSize: 16.0.sp)),
                  SizedBox(
                      height: 80.0.h,
                      width: 330.0.w,
                      child: SvgPicture.asset(
                        "assets/svgs/dVerses.svg",
                        height: 80.0.h,
                        width: 330.0.w,
                      )),
                  SizedBox(height: 16.0.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Quick Access",
                          style: AppTextStyle.BlackMedium.copyWith(
                              fontSize: 16.0.sp)),
                      Text("Swipe >>",
                          style: AppTextStyle.BlueMedium.copyWith(
                              fontSize: 16.0.sp,
                              color: AppColors.ojBlueColour)),
                    ],
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  const QuickAccessWidget(),
                  SizedBox(height: 30.0.h),
                  Text("Upcoming Programs/Services",
                      style:
                          AppTextStyle.BlackMedium.copyWith(fontSize: 16.0.sp)),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  const UpComingEventWidget(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
