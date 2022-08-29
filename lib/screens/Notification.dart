import 'package:flutter/material.dart';

import '../utils/app_colors/appColors.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

String? title;

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xFF0E3498),
        centerTitle: true,
        backgroundColor: AppColors.darkBlueColour,
        title: Title(
          color: AppColors.lightBlueColour!,
          child: Text(
            "Notification",
            style: TextStyle(
              fontFamily: " GoogleSans",
            ),
          ),
        ),
      ),
      body: Column(),
    );
  }
}
