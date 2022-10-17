import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/screens/notification_page/widget/notification_widget.dart';

import '../../core/utils/app_colors/appColors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

String? title;

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.darkBlueColour,
        title: Title(
          color: AppColors.lightBlueColour!,
          child: const Text(
            "Notification",
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 16.0.w),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_sharp))),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return const NotificationWidget();
          },
        ),
      ),
    );
  }
}
