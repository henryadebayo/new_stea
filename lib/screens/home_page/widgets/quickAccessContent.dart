import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stea/screens/prayers_page/prayer_screen.dart';
import 'package:stea/utils/app_colors/appColors.dart';
import 'package:stea/utils/app_textStyles/appTextStyle.dart';
import 'package:stea/widgets/const.dart';

import '../../testimony_page/TestimonyScreen.dart';

class QuickAccessContent extends StatelessWidget {
  final String? labelText;
  var onTapFunction;
  QuickAccessContent({Key? key, this.labelText, this.onTapFunction}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding:  EdgeInsets.only(left: 8.0.w),
        child: InkWell(
        onTap: onTapFunction,
        child: Container(
          height: 100.0,
          width: 115.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(labelText!, style: AppTextStyle.BlackMedium),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: AppColors.boxLightBlueColour,
              borderRadius: BorderRadius.circular(10.0)),
        ),
    ),
      );
  }
}

class QuickAccessWidget extends StatelessWidget {
  const QuickAccessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          QuickAccessContent(
            onTapFunction: () {
              _bottomSheet(context);
            },
            labelText: "Tithes &\nOffering",
          ),
          QuickAccessContent(
            onTapFunction: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const PrayerScreen()));
            },
            labelText: "Prayer Requests",
          ),
          QuickAccessContent(
            onTapFunction: () {
              _bottomSheet(context);
            },
            labelText: "Donations",
          ),
          QuickAccessContent(
            onTapFunction: () {
              // color: Colors.white,
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const TestimonyScreen()));
            },
            labelText: "Testimonies",
          ),
        ],
    ),
      );
  }
}

_bottomSheet(context) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      //shape: ShapeBorder:,
      elevation: 10.0,
      context: context,
      builder: (BuildContext context) {
        return Wrap(children: <Widget>[
          Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 20.0),
                    child: Container(
                      height: 5.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          color: AppColors.darkBlueColour,
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Donations",
                        style: TextStyle(
                            color: AppColors.darkBlueColour,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "All Donation can be made to the\nSTEA bank Account Number Below.",
                    style: TextStyle(
                      color: AppColors.darkBlueColour,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Text(
                    KchurchAcc,
                    style: TextStyle(
                      color: AppColors.darkBlueColour,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    KbankAccName,
                    style: TextStyle(
                      color: AppColors.darkBlueColour,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    KbankName,
                    style: TextStyle(
                      color: AppColors.darkBlueColour,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  //Divider(height: 10.0 ,),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text(
                    "Contact Director of Finance"
                    " on.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    KdOfF,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 50),
                ]),
              )),
        ]);
      });
}
