import 'package:flutter/material.dart';

void main() => runApp(CreatePractice());

class CreatePractice extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(
                'https://picsum.photos/250?image=9',
                width: 600,
                height: 60,
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 4, 4, 16),
                child: Text(
                  "Instructions",
                  style: TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                  ),
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 4, 4, 10),
                child: Text(
                  "1) Tital Duration of exam is 120 minutes. \n2) Your Clock will be set at the server. The countdown timer at the top right corner of screen will display the remaining time available for you to complete the examination. \n3) The question plate display on the right side of the screen will show the status of screen will show the status of each question.",
                )),
            Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 4, 4, 4),
                    height: 40.0,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                  Expanded(
                    child: Container(
                        child: Text("You have answered the question")),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 4, 4, 4),
                  height: 40.0,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                        "You have visited but not ansered the question yet"),
                  ),
                ),
              ]),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 4, 4, 4),
                    height: 40.0,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                            "You have not answered the question but have marked for review")),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 4, 4, 4),
                    height: 40.0,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                            "You have answered the question but have marked for review")),
                  ),
                ],
              ),
            ),
            Container(
                child: Row(
              children: [
                Expanded(
                  child: Container(
                      child: IconButton(
                    icon: Image.network('https://picsum.photos/250?image=8'),
                    iconSize: 50,
                    onPressed: () {},
                  )),
                ),
                Expanded(
                  child: Container(
                      child: IconButton(
                    icon: Image.network('https://picsum.photos/250?image=9'),
                    iconSize: 50,
                    onPressed: () {},
                  )),
                ),
              ],
            )),
          ],
        ),
      ),
    ));
  }
}
