import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

//void main() => runApp(MyApp());

class Expand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expandable Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
 
     var pageData = [
         {
             'heading': 'About Exam',
             'mainText': 'This is meain',
         },{
            'heading': 'Eligiblity',
             'mainText': 'This is meain',
         },{
            'heading': 'Age Limit',
             'mainText': 'T jgf his is meain',
         },{
            'heading': 'No of Attempts',
             'mainText': 'This is jjfdhdhndhmeain',
         },{
            'heading': 'Top Institute Affiliated',
             'mainText': ' j xj y k dut rtrtrtrtrtrtrtrtun6mimThis is meain',
         }

     ];








  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ExpandableTheme(
        data:
            const ExpandableThemeData(
                iconColor: Colors.blue,
                useInkWell: true,
            ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
              Container(                   
                  child: Text("PATH for JEE (Mains)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center,
                  ),
                  
                  
              ),
            for(var i =0;i<5;i++)(
          exapndingCard(pageData[i]['heading'],pageData[i]['mainText'])

            ),
            
Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      RaisedButton(
        child: Text("Best Books Suggested"),
        onPressed: (){},
      ),
      SizedBox(width: 5),
      RaisedButton(
        child: Text("Make My Preparation"),
        onPressed: (){},
      ),
    ],
  ),


          ],
        ),
      ),
    );
  }
}

Widget exapndingCard(heading,mainText){
return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      heading,
                   //   style: Theme.of(context).textTheme.body2,
                    )),                  
                collapsed: Text(
                  mainText,
                  softWrap: true,
                  maxLines: 0,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //for (var _ in Iterable.generate(5))
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            mainText,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),            
            
          ],
        ),
      ),
    ));
}

