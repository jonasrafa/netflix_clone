import 'package:flutter/material.dart';

Widget Treding() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      SizedBox(
        height: 10,
      ),
      SizedBox(
        height:100,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            serieItem("image6"),
            serieItem("image7"),
            serieItem("image8"),
          ],
        ),
      )
    ],
  );
}

Widget serieItem(String imageName) {
  return Container(
    margin: EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
      image: DecorationImage(
            image: AssetImage("assets/images/${imageName}.jpg"),
            fit: BoxFit.cover,
          ),
      borderRadius: BorderRadius.circular(5)
    ),
    //height: 200,
    width: 200,
  );
}
