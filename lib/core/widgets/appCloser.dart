import 'package:flutter/material.dart';

class AppKiller extends StatefulWidget {
  final Widget child;
  const AppKiller({Key? key, required this.child}) : super(key: key);

  @override
  State<AppKiller> createState() => _AppKillerState();
}

class _AppKillerState extends State<AppKiller> {
  DateTime preBackPress = DateTime.now();
  late final Widget child;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final timegap = DateTime.now().difference(preBackPress);
          final cantExit = timegap >= const Duration(seconds: 2);
          preBackPress = DateTime.now();
          if (cantExit) {
            const snack = SnackBar(
              content: Text('Press Back button again to close App '),
              duration: Duration(seconds: 2),
            );
            ScaffoldMessenger.of(context).showSnackBar(snack);
            return false;
          } else {
            return true;
          }
        },
        child: widget.child);
  }
}
