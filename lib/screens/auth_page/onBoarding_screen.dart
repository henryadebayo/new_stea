import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/screens/prayers_page/widgets/button.dart';
import 'package:stea/utils/app_textStyles/appTextStyle.dart';

import '../../utils/app_colors/appColors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<Widget> pages = [
    const OnboardingItemWidget(),
    const OnboardingItemWidget(),
  ];

  int _currentPage = 0;

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0.h,
            ),
            SizedBox(
              height: 300.0.h,
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  itemCount: pages.length,
                  onPageChanged: _onChanged,
                  itemBuilder: (BuildContext context, int index) {
                    return pages[index];
                  }),
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Row(
              children: List<Widget>.generate(
                pages.length,
                (int index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 8.0.h,
                  width: (index == _currentPage) ? 20 : 10,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: (index == _currentPage)
                        ? AppColors.ojButtonBlueColour
                        : Colors.red,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: AppTextStyle.BlueMedium,
                    )),
                SizedBox(
                  width: 8.0.w,
                ),
                CustomTextButton(
                  onSubmit: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.easeIn);
                  },
                  label: "Next",
                  height: 40.0,
                  width: 124.0.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingItemWidget extends StatelessWidget {
  const OnboardingItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 200.0.h,
            width: 305.0.w,
            color: Colors.grey[500],
          ),
        ),
        SizedBox(
          height: 20.0.h,
        ),
        Text(
          "Revive your faith in God’s daily\nword.",
          style: AppTextStyle.BlackMedium.copyWith(fontSize: 20.0.sp),
        ),
        SizedBox(
          height: 8.0.h,
        ),
        Text(
          "Listen and Watch sermons, Get books written By Bishop Olowo and other anointed men of God.",
          style: AppTextStyle.Blacklight.copyWith(color: Colors.grey[400]),
        ),
      ],
    );
  }
}
