import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FreeDevoWidget extends StatelessWidget {
  const FreeDevoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      width: 150.w,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              spreadRadius: 0.1,
              blurRadius: 0.1,
              offset: Offset(0.5, 0.5),
              color: Colors.black12)
        ],
        image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.darken),
            image: AssetImage("assets/images/devo.png"),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 105.0.h,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 5.0.w, top: 8.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "There is power in the\nname of Jesus",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.0.h,
                  ),
                  Text(
                    "Author: Bishop Ralph Olowo",
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
