import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stea/screens/auth_page/onBoarding_screen.dart';
import 'package:stea/view_models/testimony_view_models.dart';
import 'package:stea/view_models/youTube_view_model.dart';
import 'package:stea/widgets/const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TestimonyViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => YouTubeViewModel(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (child, context) => MaterialApp(
          title: 'Stea app',
          theme: ThemeData(
            fontFamily: KfontFamily,
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          debugShowCheckedModeBanner: false,
          home: const OnBoardingScreen(),
          //home: const SteaAnimation(),
          //home: const BottomNavigationWidget(),
        ),
        designSize: const Size(360, 640),
      ),
    );
  }
}
