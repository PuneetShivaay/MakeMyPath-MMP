import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:app/screens/drawer/drawer.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("home"),
            ),
            drawer: SideDrawer(),
            body: Center(
                child: Stack(children: <Widget>[
              Container(child: Image.network("https://picsum.photos/200/300")),
            ]))));
  }
}
