import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class intro_page extends StatefulWidget {
  const intro_page({super.key});

  @override
  State<intro_page> createState() => _intro_pageState();
}

class _intro_pageState extends State<intro_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.black38,
        pages: [
          PageViewModel(
            title: "Galaxy Planets (Animator) in App",
            body:
                "A galaxy is a huge collection of gas, dust, and billions of stars and their solar systems, all held together by gravity. We live on a planet called Earth that is part of our solar system. But where is our solar system? It's a small part of the Milky Way Galaxy",
            image: Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "lib/Components/Assets/e573b34cb2c5b377358250878f41c68e.gif"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          PageViewModel(
            title: "Galaxy Planets (Animator) in App",
            body:
                "A galaxy is a huge collection of gas, dust, and billions of stars and their solar systems, all held together by gravity. We live on a planet called Earth that is part of our solar system. But where is our solar system? It's a small part of the Milky Way Galaxy",
            image: Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/Components/Assets/6KO.gif"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
        ],
        done: Text("done"),
        onDone: () async {
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("isIntroVisited", true);
          Navigator.pushReplacementNamed(context, 'splashScreen');
        },
        next: Text("Next"),
        showNextButton: true,
      ),
    );
  }
}
