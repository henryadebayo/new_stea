import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoSermonWidget extends StatelessWidget {
  const VideoSermonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      width: 150.w,
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
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  bottomLeft: Radius.circular(20.0.r),
                  bottomRight: Radius.circular(20.0.r),
                )),
            child: Padding(
              padding: EdgeInsets.only(left: 5.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "God of all Grace\nHossanah",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Container(
                          child: const Icon(
                            Icons.download_rounded,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8.0)),
                        ),
                      )
                    ],
                  ),
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
