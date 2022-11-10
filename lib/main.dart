import 'package:flutter/material.dart';
import 'package:ugr/View/login_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ugr',
        //home: SplashScreenView(),
        home: LoginScreenView());
  }
}
