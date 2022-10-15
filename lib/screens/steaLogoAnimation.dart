import 'package:flutter/material.dart';
import 'package:stea/screens/auth_page/SignUp_screen.dart';

class SteaAnimation extends StatefulWidget {
  const SteaAnimation({
    Key? key,
  }) : super(key: key);

  @override
  _SteaAnimationState createState() => _SteaAnimationState();
}

class _SteaAnimationState extends State<SteaAnimation>
    with TickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Curves.fastOutSlowIn, parent: animationController))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reset();
          animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              parent: animationController, curve: Curves.fastOutSlowIn))
            ..addStatusListener((status) {
              if (status == AnimationStatus.completed) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (ctx) {
                  return SignUpScreen();
                }));
              }
            });
          animationController.forward();
        }
      });

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (BuildContext context, Widget? child) {
            return Transform(
              transform: Matrix4.translationValues(
                  animation.value * deviceWidth, 0.0, 0.0),
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/stealogo.png"),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
