import 'dart:async';
import 'package:books_arena/pages/launch_page.dart';
import 'package:books_arena/utils/global_utility.dart';
import 'package:books_arena/utils/images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late AnimationController controller;

  double _progressValue = 0.0;

  bool useTimer = true; // Set this to false if you want to skip the timer

  @override
  void initState() {
    super.initState();

    if (useTimer) {
      startTimer();
    } else {
      navigateToOuterLayer();
    }
  }

  void startTimer() {
    Timer.periodic(
      const Duration(milliseconds: 500),
      (timer) {
        setState(() {
          _progressValue += 0.1;
        });

        if (_progressValue >= 1.0) {
          timer.cancel();

          navigateToOuterLayer();
        }
      },
    );
  }

  void navigateToOuterLayer() {
    Utility.navigateTo(
      context,
      const LaunchPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Image.asset(
          height: double.infinity,
          width: double.infinity,
          AppImages.SplashScreen.path,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
//  child: Image.asset(AppImages.piccadilly.path),