import 'package:flutter/material.dart';

Widget MyAppBar() {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Icon(
                Icons.menu,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/logo.png",
                width: 80,
              ),
            ],
          ),
        ),
        Icon(
          Icons.cast,
          color: Colors.white,
        ),
      ],
    ),
  );
}
