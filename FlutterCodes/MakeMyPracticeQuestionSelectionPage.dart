import 'package:flutter/material.dart';

void main() => runApp(MakeMyPractice());

class MakeMyPractice extends StatefulWidget {
  @override
  _MakeMyPracticeState createState() => _MakeMyPracticeState();
}

class _MakeMyPracticeState extends State<MakeMyPractice> {
  double _currentSliderValue = 5; //slider value
  String sliderValue = '5'; //Rounded slider value as String

  int _n = 10; // Variable for total number of problems
  int _s = 20; // Variable for subject Time

  List<String> subjects = ["Physics ", "Chemistry", "English"];

  List<String> _texts = [
    "Single Choice",
    "Multiple Choice",
    "Objective Type",
  ];

  List<bool> _isChecked;
  //////////////////  Function for Checkbox Values //////////////////////////////
  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(_texts.length, false);
  }

//////////////////  Function for Total Number of Problems Values //////////////////////////////

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 10) _n--;
    });
  }

  //////////////////  Function for Subject Time //////////////////////////////

  void adds() {
    setState(() {
      _s++;
    });
  }

  void minuss() {
    setState(() {
      if (_s != 10) _s--;
    });
  }
  //////////////////  Function for Print Values //////////////////////////////

  void allValues() {
    print("start My Practice button clicked");
    print("Number of subjects ${subjects.length}");
    print("Selected Subjects $subjects");
    print('Number of Problems $_n');
    print('Subject Time $_s');
    // for (var i = 0; i < listOptionClicks.length; i++) {
    //   print(
    //       '${listOptionClicks[i].textToDisplay}  ${listOptionClicks[i].value}');
    //  }

    print('Slider Value $_currentSliderValue');
    print('Slider Rounded Value $sliderValue');
  }

  ////////////////////// All Variable Functions End////////////////////

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            //////////////////Make My Practice Image//////////////////////////////

            Container(
              child: Image.network(
                'https://picsum.photos/250?image=9',
                width: 800,
                height: 40,
              ),
            ),
            //////////////////  Total Subject Selected //////////////////////////////

            Container(
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 4, 4, 4),
                  height: 40.0,
                  width: 40,
                  child: Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[Colors.blue, Colors.white],
                      ),
                    ),
                    child: Text("Total Subjects Selected"),
                  ),
                ),
                new Text('${subjects.length}',
                    style: new TextStyle(fontSize: 20.0)),
                _simplePopup(),
              ]),
            ),
            //////////////////  Total Number of Problem/////////////////////////////

            Container(
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 4, 4, 4),
                  height: 40.0,
                  width: 40,
                  child: Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[Colors.yellowAccent[400], Colors.white],
                      ),
                    ),
                    child: Text("Total Number of Problems"),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  onPressed: minus,
                ),
                new Text('$_n', style: new TextStyle(fontSize: 20.0)),
                IconButton(
                  icon: Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  onPressed: add,
                ),
              ]),
            ),
            //////////////////  Subject Time //////////////////////////////

            Container(
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 4, 4, 4),
                  height: 40.0,
                  width: 40,
                  child: Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[Colors.pinkAccent[200], Colors.white],
                      ),
                    ),
                    child: Text("Subject Time (in minutes)"),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  //tooltip: 'Decrease value by 1',
                  onPressed: minuss,
                ),
                new Text('$_s', style: new TextStyle(fontSize: 20.0)),
                IconButton(
                  icon: Icon(
                    Icons.arrow_drop_up_sharp,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  // tooltip: 'Increase value by 1',
                  onPressed: adds,
                ),
              ]),
            ),
            ////////////////// Types of Problem //////////////////////////////

            Container(
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 4, 4, 4),
                  height: 40.0,
                  width: 40,
                  child: Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[Colors.greenAccent[400], Colors.white],
                      ),
                    ),
                    child: Text("Types of Problem"),
                  ),
                ),
              ]),
            ),
///////////////////////////  checkbox //////////////////////////////
            Expanded(
              child: new ListView.builder(
                itemCount: _texts.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    activeColor: Colors.green,
                    title: Text(_texts[index]),
                    value: _isChecked[index],
                    onChanged: (val) {
                      setState(
                        () {
                          _isChecked[index] = val;
                        },
                      );
                    },
                  );
                },
              ),
            ),

            //////////////////Slider for Difficulty Level //////////////////////////////

            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(50, 20, 0, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Easy"),
                      ),
                      Expanded(
                        child: Text("Medium"),
                      ),
                      Expanded(
                        child: Text("Hard"),
                      ),
                    ],
                  ),
                ),

                ///////////////   //Customized Slider/////////////////////////////////

                Container(
                  height: 46,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(6.0),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.red, Colors.yellow, Colors.green])),
                  child: Center(
                      child: Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 10,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                        sliderValue = _currentSliderValue.round().toString();
                      });
                    },
                  )),
                ),
              ],
            ),

            /////////////////Start Button/////////////////////////////////
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: allValues,
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 160.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: new BorderRadius.circular(14.0),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.power_settings_new_rounded,
                        color: Colors.green,
                        size: 30.0,
                      ),
                      Container(
                        width: 100.0,
                        height: 40.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.cyan[200],
                          borderRadius: new BorderRadius.circular(26.0),
                        ),
                        child: Text('Start My\nPractice',
                            style: TextStyle(fontSize: 14)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    ));
  }

  /////////////////////////////Popup Widget for Total Subjects/////////////////////////////
  Widget _simplePopup() => PopupMenuButton<int>(
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.blue,
          size: 30.0,
        ),
        itemBuilder: (context) => [
          for (var i = 0; i < subjects.length; i++)
            (PopupMenuItem(
              child: Text(subjects[i]),
            )),
        ],
      );
}
