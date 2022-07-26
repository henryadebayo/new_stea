import 'package:flutter/material.dart';
import 'package:stea/widgets/appCloser.dart';
import 'audioLib.dart';
import 'devotionals.dart';
import 'home_screen.dart';
import '../widgets/const.dart';

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
    const Devotionals(),
    const AudioLib(),
  ];

  @override
  Widget build(BuildContext context) {
    return AppKiller(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTabIndex,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          selectedItemColor: KdarkBlueColour,
          onTap: (index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books),
              label: 'Devotionals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.multitrack_audio_sharp),
              label: 'Sermons',
            ),
          ],
        ),
        body:
        pages[currentTabIndex],//pages[currentTabIndex],
      ),
    );
  }
}
