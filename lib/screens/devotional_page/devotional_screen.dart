import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/screens/devotional_page/widgets/free_devotional_widget.dart';
import 'package:stea/screens/devotional_page/widgets/premium_devotional_widget.dart';

import '../../core/utils/app_colors/appColors.dart';
import '../../core/widgets/edge_padding.dart';
import '../../widgets/curved_custom_tabBar.dart';
import '../sermons_page/widgets/search_field.dart';

class DevotionalScreen extends StatefulWidget {
  const DevotionalScreen({Key? key}) : super(key: key);

  @override
  State<DevotionalScreen> createState() => _DevotionalScreenState();
}

class _DevotionalScreenState extends State<DevotionalScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: AppColors.darkBlueColour),
            backgroundColor: Colors.white,
            title: const Text(
              "Devotionals",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0),
            ),
          ),
          body: EdgePadding(
            child: Column(
              children: [
                Container(
                  height: 35.0.h,
                  width: 310.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0.r),
                      color: Colors.grey[200]),
                  child: CustomCurvedTabBar(
                    firstLabel: "Free Dev.",
                    secondLabel: "Premium Dev.",
                  ),
                ),
                SizedBox(
                  height: 16.0.h,
                ),
                SearchField2(
                  hintT: 'Search devotionals here',
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 16.0.h,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      //VIDEO SERMONS
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, int index) => Padding(
                            padding: EdgeInsets.only(top: 16.0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                FreeDevoWidget(),
                                FreeDevoWidget(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, int index) => Padding(
                            padding: EdgeInsets.only(top: 16.0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                PremiumDevotionalWidget(),
                                PremiumDevotionalWidget(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
