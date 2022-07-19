import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stea/screens/steaLogoAnimation.dart';
import 'package:stea/view_models/testimony_view_models.dart';
import 'package:stea/widgets/const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>
          TestimonyVeiwModel()
      ),
    ],
      child:  ScreenUtilInit(
        builder:(child, context) => MaterialApp(
          title: 'Stea app',
          theme: ThemeData(
            fontFamily: KfontFamily,
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          debugShowCheckedModeBanner: false,
          home: const SteaAnimation(),
        ),
        designSize: const Size (360, 640),

      ),
    );

  }
}
