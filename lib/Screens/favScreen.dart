import 'package:flutter/material.dart';
import 'package:planets/Components/list.dart';

class Fav extends StatefulWidget {
  const Fav({super.key});

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Favorite",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(""),
                )),
          ),
          ...favlist
              .map(
                (e) => Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("${e['image']}"),
                      )),
                ),
              )
              .toList(),
        ],
      ),
      // body: Stack(
      //   children: [
      //     Container(
      //       height: double.infinity,
      //       width: w,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage("lib/Components/Assets/BackgroundBlack.gif"),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.all(10),
      //       height: 100,
      //       width: 100,
      //       color: Colors.white,
      //     ),
      //     Container(
      //       margin: EdgeInsets.all(10),
      //       height: 100,
      //       width: 100,
      //       color: Colors.white,
      //     ),
      //
      //     Container(
      //       margin: EdgeInsets.all(10),
      //       height: 100,
      //       width: 100,
      //       color: Colors.white,
      //     ),
      //   ],
      // ),
    );
  }
}
