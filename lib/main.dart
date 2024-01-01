import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planets/Screens/favScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/detailScreen.dart';
import 'Screens/homepage.dart';
import 'Screens/image.dart';
import 'Screens/intro_page.dart';
import 'Screens/splesh.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();

  bool isVisitOnce = preferences.getBool("visited") ?? false;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: (isVisitOnce == true) ? 'splashScreen' : '/',
      routes: {
        '/': (context) => intro_page(),
        'splashScreen': (context) => SplashScreen(),
        'home': (context) => HomePage(),
        'detail': (context) => DetailScreen(),
        'image': (context) => Images(),
        'fav': (context) => Fav(),
      },
    ),
  );
}
