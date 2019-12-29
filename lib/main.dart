import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/Home/Home.dart';
import 'package:netflix_clone/screens/Login/Login.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      accentColor: Color(0xFFFA0000),
      focusColor: Color(0xFFFA0000),
    ),
  ));
}