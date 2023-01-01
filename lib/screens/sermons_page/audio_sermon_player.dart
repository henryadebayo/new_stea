import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/core/utils/app_textStyles/appTextStyle.dart';

class AudioSermonPlayer extends StatefulWidget {
  const AudioSermonPlayer({Key? key}) : super(key: key);

  @override
  State<AudioSermonPlayer> createState() => _AudioSermonPlayerState();
}

class _AudioSermonPlayerState extends State<AudioSermonPlayer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Icon(Icons.arrow_back_ios),
          title: const Text(
            "Now Playing",
            style: AppTextStyle.blackMedium,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.0.w),
              child: const Icon(Icons.favorite_border_outlined),
            )
          ],
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 260.0.h,
                width: 310.0.w,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
