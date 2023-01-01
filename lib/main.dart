import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stea/core/widgets/Strings.dart';
import 'package:stea/view_models/testimony_view_models.dart';
import 'package:stea/view_models/youTube_view_model.dart';

import 'core/route_helper/route_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        builder: (child, context) => MaterialApp.router(
          routerDelegate: RouteManager.Stearouter.routerDelegate,
          routeInformationParser:
              RouteManager.Stearouter.routeInformationParser,
          routeInformationProvider:
              RouteManager.Stearouter.routeInformationProvider,
          title: 'Stea app',
          theme: ThemeData(
            fontFamily: KfontFamily,
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          debugShowCheckedModeBanner: false,
          // home: const SelectSignUpType(),
          // home: const SplashScreen(),
          //home: const BottomNavigationWidget(),
        ),
        designSize: const Size(360, 640),
      ),
    );
  }
}
