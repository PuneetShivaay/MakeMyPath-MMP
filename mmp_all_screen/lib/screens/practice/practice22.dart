import 'package:flutter/material.dart';
import 'package:app/screens/practice/physics/physics.dart';
import 'package:app/screens/practice/chemistry/chemistry.dart';

class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tabs Demo'),
            bottom: TabBar(
                            isScrollable: true,

              tabs: [
           Tab(
                  child: Container(
                    height: 40,
                    width: 90,
                    //  margin: EdgeInsets.all(5),
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.blue),
                    child: TextButton(
                      child: new Text(
                        "PHYSICS",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Tab(
                    child: Container(
                  height: 40,
                  width: 90,
                  // margin: EdgeInsets.all(2),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: new LinearGradient(
                      colors: [Colors.blue, Colors.white],
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                    ),
                  ),
                  child: TextButton(
                    child: new Text(
                      "CHEMISTRY",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              PhysicsScreen(),
              ChemistryScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
