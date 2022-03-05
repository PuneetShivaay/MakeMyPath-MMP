import 'package:flutter/material.dart';
import 'package:app/screens/profile/profile.dart';

//void main() => runApp(SideDrawer());

class SideDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Colors.yellow,
              Colors.orangeAccent
            ])),
            child: CircleAvatar(
              //backgroundImage: NetworkImage("https://picsum.photos/200/300"),
              // radius: 12,
              child: ProfilePic(),
            ),
          ),
          CustomListTile(Icons.person, "My Profile", () => Profile()),
          CustomListTile(Icons.account_box, "My Mentors", () => Profile()),
          CustomListTile(Icons.collections_bookmark, "My Homework", () => Profile()),
          CustomListTile(Icons.person, "Share App", () => Profile()),
          CustomListTile(Icons.person, "Contact Us", () => Profile()),
          CustomListTile(Icons.bug_report, "Rate us", () => Profile()),
          CustomListTile(Icons.lock, "Log Out", () => Profile()),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => onTap()),
          );
        },
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: _animation,
        child: const Padding(
          padding: EdgeInsets.all(1.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://picsum.photos/200/300"),
            radius: 80,
          ),
        ),
      ),
    );
  }
}
