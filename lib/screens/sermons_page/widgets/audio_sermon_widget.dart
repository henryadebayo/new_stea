import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/app_textStyles/appTextStyle.dart';

class AudioSermonWidget extends StatelessWidget {
  const AudioSermonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25.0.r,
      ),
      title: const Text(
        "Above all principalities and powers",
        style: AppTextStyle.BlackMedium,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("By Bp. R.O Olowo"),
          Text("1hr 30min"),
        ],
      ),
      trailing: const Icon(
        Icons.play_circle_fill,
        size: 40.0,
      ),
    );
  }
}
