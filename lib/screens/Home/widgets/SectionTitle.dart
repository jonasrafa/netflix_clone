import 'package:flutter/material.dart';

Widget SectionTitle(String title) {
  return Column(
    children: <Widget>[
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            color: Color(0xFFF9F9F9),
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      SizedBox(
        height: 5,
      )
    ],
  );
}