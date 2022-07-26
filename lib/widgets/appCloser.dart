import 'package:flutter/material.dart';


class AppKiller extends StatefulWidget {
  Widget child;
   AppKiller({Key? key, required this.child}) : super(key: key);

  @override
  State<AppKiller> createState() => _AppKillerState();
}

class _AppKillerState extends State<AppKiller> {
  DateTime pre_backpress = DateTime.now();
 late final Widget child;

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
        onWillPop: () async{
      final timegap = DateTime.now().difference(pre_backpress);
      final cantExit = timegap >= Duration(seconds: 2);
      pre_backpress = DateTime.now();
      if(cantExit){
        //show snackbar
        final snack = SnackBar(content: Text('Press Back button again to close App '),duration: Duration(seconds: 2),);
        ScaffoldMessenger.of(context).showSnackBar(snack);
        return false;
      }else{
        return true;
      }
    },
        child: widget.child
  );
  }
}
