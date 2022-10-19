import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_colors/appColors.dart';

class AboutUsImageContainer extends StatelessWidget {
  String imageName;
  AboutUsImageContainer({
    Key? key,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageName),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}

class AboutUsNameH extends StatelessWidget {
  String labelName;
  AboutUsNameH({Key? key, required this.labelName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0, right: 7.0),
      child: Container(
        height: 40.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.darkBlueColour,
        ),
        child: Center(
          child: Text(
            labelName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              wordSpacing: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}

class AboutUsInfo extends StatelessWidget {
  const AboutUsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elitDonec arcu mi, feugiat accumsan urna a, vulputate rutrum est Nullam ultricies ullamcorper laoreet Etiam faucibu vehicula nulla non tempus Pellentesque quis facilisis velit",
        style: TextStyle(
          color: AppColors.darkBlueColour,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class CarouselItems extends StatelessWidget {
  final image;

  const CarouselItems({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10.0)));
  }
}
//
// class ExitWidget extends StatelessWidget {
//   const ExitWidget({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//         title: const Text("Do you want to Exit App ?"),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () => Navigator.pop(context, false),
//             child: const Text("No"),
//           ),
//           TextButton(
//             onPressed: () => Navigator.pop(context, true),
//             child: const Text("Yes"),
//           ),
//         ]);
//   }
// }
