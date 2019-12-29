import 'package:flutter/material.dart';

Widget ContinueWatching() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      SizedBox(
        height: 210,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            serieItem("image3", "Ghoul", "Out of The Smokeless Fire"),
            serieItem("image4", "13 Reasons Why", "The Second Polaroid"),
            serieItem("image5", "Jessica Jones", "AKA Crush Syndrome"),
          ],
        ),
      )
    ],
  );
}

Widget serieItem(String imageName, String serieName, episodeName) {
  return Container(
    margin: EdgeInsets.only(right: 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
    //height: 200,
    width: 200,
    child: Column(
      children: <Widget>[
        Image.asset(
          "assets/images/${imageName}.jpg",
          width: 200,
          fit: BoxFit.fill,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            color: Color(0xFF171717),
          ),
          width: 200,
          padding: EdgeInsets.all(7),
          //color: Color(0xFF171717),
          height: 75,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                serieName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "S1:E1 \"${episodeName}\"",
                style: TextStyle(
                  color: Color(0xFF4D4D4D),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 92.0, top: 10),
                    child: CustomPaint(painter: Drawredhorizontalline()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 92.0, top: 10),
                    child: CustomPaint(painter: DrawGrayhorizontalline()),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

class Drawredhorizontalline extends CustomPainter {
  Paint _paint;

  Drawredhorizontalline() {
    _paint = Paint()
      ..color = Color(0xFFE50914)
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.square;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(-90.0, 0.0), Offset(0, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DrawGrayhorizontalline extends CustomPainter {
  Paint _paint;

  DrawGrayhorizontalline() {
    _paint = Paint()
      ..color = Color(0xFF4D4D4D)
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.square;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(-90.0, 0.0), Offset(0.0, 0.0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
