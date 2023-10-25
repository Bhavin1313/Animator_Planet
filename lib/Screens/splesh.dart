import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.of(context).pushReplacementNamed('home');
      },
    );

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/Components/Assets/giphy.gif',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: TweenAnimationBuilder(
              tween: Tween(begin: h * .1, end: h * .4),
              duration: Duration(seconds: 4),
              builder: (BuildContext context, dynamic value, Widget? widget) =>
                  Container(
                margin: EdgeInsets.all(20),
                height: value,
                width: value,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "lib/Components/Assets/tumblr_mz3r79DOGD1s6z5e9o1_400.gif"),
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
