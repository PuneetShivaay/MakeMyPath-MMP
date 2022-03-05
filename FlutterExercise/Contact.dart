import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Contact extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Contact> {
  
  
  void _launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget _ContactLine(lineIcon,text,url){
    return       Container(
                            alignment: Alignment.center,
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: FlatButton(
                      textColor: Colors.white,
                       color: Colors.blue,                   
                      child: Row( 
                  children: <Widget>[
                    Icon(lineIcon),
                    Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(text),
              ],
            ),                
                  ],
                ),
                      
                      onPressed: (){
                          _launchURL(url);
                      },
                                  
                    ));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'MMP',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Make My Paper',
                      style: TextStyle(fontSize: 20),
                    )),
_ContactLine(Icons.web,'Website','https://erdr.in/'),
_ContactLine(Icons.smartphone,'Facebook','https://www.facebook.com/'),
_ContactLine(Icons.home,'Instagram','https://www.facebook.com/'),
_ContactLine(Icons.mail,'Mail Us','https://www.facebook.com/'),


                Container(
                    //alignment: Alignment.center,
                      alignment: FractionalOffset.bottomCenter,

                                      //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                    child: FlatButton(
                      onPressed: () {
_launchURL('https://erdr.in/');                      },
                      textColor: Colors.blue,
                      child: Text('Created With Love \n by Er-Dr Acad Pvt Ltd',
                                  textAlign: TextAlign.center,),
                    )),
              ],
            )));
  }
}