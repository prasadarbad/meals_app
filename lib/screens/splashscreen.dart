// ignore_for_file: avoid_web_libraries_in_flutter
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/main.dart';
import 'package:meals_app/models/meal.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:meals_app/screens/tabs_screen.dart';

class Splash extends StatefulWidget {
  static const routeName = '/splash-screen';
  final List<Meal> favoritemeals;

  Splash(this.favoritemeals);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 7000), () {});

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => TabScreen(widget.favoritemeals)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Lottie.asset('assets/lottie/89850-cooking.json'),
      ),
    ));
  }
}
