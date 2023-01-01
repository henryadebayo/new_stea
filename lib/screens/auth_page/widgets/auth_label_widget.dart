import 'package:flutter/material.dart';

class AuthLabelWidget extends StatelessWidget {
  final String header;
  final String header2;
  const AuthLabelWidget({
    required this.header,
    required this.header2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.vertical,
      children: [
        Text(
          header,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: "GoogleSans",
          ),
        ),
        Text(
          header2,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: "GoogleSans",
          ),
        ),
      ],
    );
  }
}
