import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          automaticallyImplyLeading:true,
          leading:IconButton(icon: Icon(Icons.arrow_back),
          onPressed:(){
            Navigator.pop(context);
          }
           ),
          
        ),
          body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200/300"),
                radius: 60,
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10.0),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 30),
                          child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Contact Info",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Email :"),
                                    Text("Rahul@erdr.in"),
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Phone :"),
                                    Text("1234567890"),
                                  ]),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10.0),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 30),
                          child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Course of Interest",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("IIT"),
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("JEE "),
                                  ]),
                            ],
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
