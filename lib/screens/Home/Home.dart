import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/Home/widgets/ContinueWatching.dart';
import 'package:netflix_clone/screens/Home/widgets/Genre.dart';
import 'package:netflix_clone/screens/Home/widgets/MyAppBar.dart';
import 'package:netflix_clone/screens/Home/widgets/Originals.dart';
import 'package:netflix_clone/screens/Home/widgets/SearchBar.dart';
import 'package:netflix_clone/screens/Home/widgets/SectionTitle.dart';
import 'package:netflix_clone/screens/Home/widgets/Treding.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF111111),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                topPart(),
                bottomPart(),
              ],
            ),
          ),
        ));
  }

  Widget topPart() {
    return Column(
      children: <Widget>[
        MyAppBar(),
        SizedBox(
          height: 20,
        ),
        SearchBar(),
      ],
    );
  }

  Widget bottomPart() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          SectionTitle("Netflix Originals"),
          Originals(),
          SectionTitle("Continue Watching"),
          ContinueWatching(),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SectionTitle("Explore by Genres"),
              Icon(Icons.keyboard_arrow_down, color: Colors.white)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Genres("ACTION"),
              Genres("ADVENTURE"),
              Genres("COMEDY"),
            ],
          ),
          SizedBox(height: 10,),
          SectionTitle("Treding"),
          Treding(),
        ],
      ),
    );
  }
}
