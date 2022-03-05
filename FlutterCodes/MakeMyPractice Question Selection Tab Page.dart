import 'package:flutter/material.dart';

void main() {
  runApp(Practice());
}

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  GlobalKey _toolTipKey = GlobalKey();

  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
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
                      "BIOLOGY",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
              ],
            ),
            title: Text('MAKE MY PRACTICE'),
          ),
          body: TabBarView(
            children: [
              Container(
                  child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Units And Measurement ',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      GestureDetector(
                        onTap: () {
                          final dynamic tooltip = _toolTipKey.currentState;
                          tooltip.ensureTooltipVisible();
                        },
                        child: Tooltip(
                          key: _toolTipKey,
                          message: 'Units Info',
                          child: Icon(
                            Icons.info_outline,
                            size: 12.0,
                          ),
                        ),
                      ),
                      Checkbox(
                        checkColor: Colors.greenAccent,
                        activeColor: Colors.green,
                        value: this.valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuefirst = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'vector ',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Checkbox(
                        checkColor: Colors.greenAccent,
                        activeColor: Colors.green,
                        value: this.valuesecond,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuesecond = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Motion',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Checkbox(
                        checkColor: Colors.greenAccent,
                        activeColor: Colors.green,
                        value: this.valuethird,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuethird = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              )),
              Container(
                child: Text("ah"),
              ),
              Container(
                child: Text("ah"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
