import 'package:flutter/material.dart';

class BottomSheetCon extends StatelessWidget {
  final IconData? iconData;
  final String? name;
  const BottomSheetCon({Key? key, this.name, this.iconData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: Colors.blueAccent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.white,
            size: 70.0,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            name!,
            style: const TextStyle(color: Colors.white, fontSize: 20.0),
          )
        ],
      ),
    );
  }
}
