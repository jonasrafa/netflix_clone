import 'package:flutter/material.dart';

Widget Genres(String genreName) {
  return RaisedButton(
    onPressed: () {},
    color: Color(0xFFE50914),
    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
    child: Text(
      genreName,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        letterSpacing: 0.5,
      ),
    ),
  );
}
