import 'package:flutter/material.dart';
import 'package:stea/core/widgets/appCloser.dart';
import 'package:stea/screens/sermons_page/sermons_screen.dart';

import '../../utils/app_colors/appColors.dart';
import '../devotional_page/devotional_screen.dart';
import '../home_page/home_screen.dart';
import '../profile_page/profileScreen.dart';

class BottomNavigationWidget extends StatefulWidget {
  final String? userName;

  const BottomNavigationWidget({this.userName});

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int currentTabIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const SermonsScreen(),
    const DevotionalScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return AppKiller(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTabIndex,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          selectedItemColor: AppColors.darkBlueColour,
          unselectedItemColor: AppColors.darkBlueColour.withOpacity(0.5),
          onTap: (index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.multitrack_audio_sharp),
              label: 'Sermons',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books),
              label: 'Devotionals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        body: pages[currentTabIndex], //pages[currentTabIndex],
      ),
    );
  }
}
