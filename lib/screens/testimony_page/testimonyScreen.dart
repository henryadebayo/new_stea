import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stea/screens/testimony_page/widgets/testimonyCard.dart';

import '../../core/utils/app_colors/appColors.dart';
import '../../data/Services/testimony_services.dart';
import '../../view_models/testimony_view_models.dart';
import 'addTestimonyScreen.dart';

class TestimonyScreen extends StatelessWidget {
  const TestimonyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TestimonyService testimonyService = TestimonyService();
    TestimonyViewModel testimonyVeiwModel = context.watch<TestimonyViewModel>();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.darkBlueColour),
        backgroundColor: Colors.white,
        title: Text(
          "Testimonies",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18.0.sp),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: testimonyVeiwModel.getTestimony,
        child: _ui(testimonyVeiwModel),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => const AddTestimonyScreen()));
        },
        backgroundColor: Colors.white,
        child: Icon(
          FontAwesomeIcons.plus,
          color: AppColors.darkBlueColour,
        ),
      ),
    );
  }

  _ui(TestimonyViewModel testimonyVeiwModel) {
    if (testimonyVeiwModel.loading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AlertDialog(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SpinKitCubeGrid(
                    //duration: Duration(milliseconds: 1200),
                    color: Colors.blueAccent,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text("Loading Testimony..."),
                ],
              ),
            ),
          ),
        ],
      );
    }
    if (testimonyVeiwModel.testimonyError != null) {
      return Container(
        child: AlertDialog(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "Can't Load Testimony slide down to refresh...",
                style: TextStyle(color: AppColors.darkBlueColour),
              ),
            ],
          ),
        ),
      );
    }
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20.0.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: ListView.builder(
                itemCount: testimonyVeiwModel.testimonyModel.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0.h),
                      child: TestimonyCard(
                        name: testimonyVeiwModel.testimonyModel[index].name,
                        testimony:
                            testimonyVeiwModel.testimonyModel[index].details,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
