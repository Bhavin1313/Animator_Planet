import 'package:flutter/material.dart';

import '../Model/planets_model.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    PlanetsModel data =
        ModalRoute.of(context)!.settings.arguments as PlanetsModel;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/Components/Assets/BackgroundBlack.gif"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView.builder(
            itemCount: 4,
            itemBuilder: (context, i) {
              return TweenAnimationBuilder(
                tween: Tween(begin: h * .1, end: h * .4),
                duration: Duration(seconds: 4),
                builder:
                    (BuildContext context, dynamic value, Widget? widget) =>
                        Container(
                  margin: EdgeInsets.all(20),
                  height: value,
                  width: value,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${data.more[i]}"),
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
