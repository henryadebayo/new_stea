import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class VideoSermonWidget extends StatelessWidget {
  const VideoSermonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: MediaQuery.of(context).size.width- 35.0,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              spreadRadius: 0.1,
              blurRadius: 0.1,
              offset: Offset(0.5, 0.5),
              color: Colors.black12)
        ],
        image: const DecorationImage(
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.darken),
            image: AssetImage("assets/images/image3.png"),
            fit: BoxFit.cover
    ),
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60.0.h),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.play_arrow),
            ),
          ),
          Container(
            height: 70.0.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0.r),
                  bottomRight: Radius.circular(10.0.r),
                )),
            child: Padding(
              padding: EdgeInsets.only(left: 16.0.w, top: 8.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                   "God of all Grace Hosanna",
                   style: TextStyle(
                       color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16.0),
                      ),
                  SizedBox(height: 4.0.h,),
                  Text(
                    "By Bishop Ralph Olowo",
                    style: TextStyle(color: Colors.grey[500], fontSize: 10.0),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
