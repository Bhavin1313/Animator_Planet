import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/planets_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: rootBundle.loadString("lib/Components/planets.json"),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("${snapshot.hasError}");
          } else if (snapshot.hasData) {
            String? jsondata = snapshot.data;
            List mydata = jsonDecode(jsondata!);
            List<PlanetsModel> data = mydata
                .map(
                  (e) => PlanetsModel.fromjson(data: e),
                )
                .toList();
            return Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "lib/Components/Assets/BackgroundBlack.gif"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, i) {
                    return TweenAnimationBuilder(
                      tween: Tween(begin: h * .1, end: h * .4),
                      duration: Duration(seconds: 4),
                      builder: (BuildContext context, dynamic value,
                              Widget? widget) =>
                          GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'detail',
                              arguments: data[i]);
                        },
                        child: Container(
                          margin: EdgeInsets.all(20),
                          height: value,
                          width: value,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("${data[i].image}"),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "${data[i].name}",
                            style: GoogleFonts.spaceMono(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
