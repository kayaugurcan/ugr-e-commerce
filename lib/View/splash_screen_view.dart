import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ugr/constants.dart';

import 'login_screen_view.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isLoaded = false;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: Constants().animationDurationTime),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isLoaded = true;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: isLoaded
          ? const LoginScreenView()

          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) =>  const LoginScreenView(),
          //   ))
          : Lottie.asset('assets/raw/splash.json',
              controller: _animationController, onLoaded: (comp) {
              _animationController.duration = comp.duration;
              _animationController.forward();
            }),
    ));
  }
}
