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
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.black38,
        pages: [
          PageViewModel(
            titleWidget: const Text(
              "Galaxy Planets",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: h * .45,
                  width: w,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          "lib/Components/Assets/e573b34cb2c5b377358250878f41c68e.gif"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "A galaxy is a huge collection of gas, dust, and billions of stars and their solar systems, all held together by gravity. We live on a planet called Earth that is part of our solar system. But where is our solar system? It's a small part of the Milky Way Galaxy",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "Galaxy Planets",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: h * .45,
                  width: w,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          "lib/Components/Assets/solar-system-planets-motion-2qrm6pej5euz3lsz.gif"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Our solar system’s eight planets come in two flavors: smaller rocky planets with solid ground (Mercury, Venus, Earth and Mars) and larger gas giants (Jupiter, Saturn, Uranus, and Neptune).",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "Galaxy Planets",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            bodyWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: h * .45,
                  width: w,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("lib/Components/Assets/6KO.gif"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "We only get one planet. Humankind must become accountable on a massive scale for the wanton destruction of our collective home. Protecting our future on this planet depends on the conscious evolution of our species.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
        done: Text(
          "Done",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onDone: () async {
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("isIntroVisited", true);
          Navigator.pushReplacementNamed(context, 'splashScreen');
        },
        next: Text(
          "Next",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        showNextButton: true,
        back: Text(
          "Back",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        showBackButton: true,
      ),
    );
  }
}
