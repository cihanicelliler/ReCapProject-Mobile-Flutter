import 'package:flutter/material.dart';
import 'package:recap_car_demo/Screens/Welcome/welcome_screen.dart';
import 'package:recap_car_demo/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recap Car Project',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,

      ),
      home: WelcomeScreen(),
    );
  }
}

