import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

Widget Originals() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      SizedBox(
        height: 5,
      ),
      CarouselSlider(
        autoPlay: true,
        height: 200.0,
        viewportFraction: 1.0,
        autoPlayInterval: Duration(seconds: 5),
        items: [1, 2].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/image" + i.toString() + ".jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 350.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(.7),
                            ],
                            stops: [
                              0.0,
                              1.0
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                i == 1
                                    ? "TV SERIES • ACTION"
                                    : "TV SERIES • DRAMA",
                                style: TextStyle(
                                  color: Color(0xFFe50914),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                i == 1
                                    ? "Marvel's The Defenders"
                                    : "The Witcher",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Season 1 • Episodes 8",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.play_circle_filled,
                            color: Color(0xFFe50914),
                            size: 32,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        }).toList(),
      ),
      SizedBox(
        height: 5,
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Text(
          "VIEW ALL",
          style: TextStyle(
            color: Color(0xFFe50914),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  );
}
