import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/screens/sermons_page/widgets/audio_sermon_widget.dart';
import 'package:stea/screens/sermons_page/widgets/search_field.dart';
import 'package:stea/screens/sermons_page/widgets/videoWidget.dart';

import '../../core/utils/app_colors/appColors.dart';
import '../../core/widgets/edge_padding.dart';
import '../../widgets/curved_custom_tabBar.dart';

class SermonsScreen extends StatefulWidget {
  const SermonsScreen({Key? key}) : super(key: key);

  @override
  State<SermonsScreen> createState() => _SermonsScreenState();
}

class _SermonsScreenState extends State<SermonsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.darkBlueColour),
          backgroundColor: Colors.white,
          title: const Text(
            "Sermons",
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
                  firstLabel: "Video sermons",
                  secondLabel: "Audio Board",
                ),
              ),
              SizedBox(
                height: 16.0.h,
              ),
              SearchField2(
                hintT: 'Search Sermon',
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
                              VideoSermonWidget(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, _) => Padding(
                          padding: EdgeInsets.only(bottom: 16.0.h),
                          child: const AudioSermonWidget(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
