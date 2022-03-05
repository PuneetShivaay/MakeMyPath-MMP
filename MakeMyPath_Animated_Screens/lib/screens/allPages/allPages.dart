import 'package:flutter/material.dart';
//import 'package:flutter_onboarding_ui/screens/onboardingScreen/onboarding.dart';
import 'package:flutter_onboarding_ui/screens/onboardingScreen/onboarding_screen.dart';
import 'package:flutter_onboarding_ui/screens/splashScreen/splash_screen.dart';
import 'package:flutter_onboarding_ui/screens/aboutUs/aboutUs.dart';
import 'package:flutter_onboarding_ui/screens/setting/setting.dart';
import 'package:flutter_onboarding_ui/screens/contact/contact.dart';
import 'package:flutter_onboarding_ui/screens/expandable/expandable.dart';
import 'package:flutter_onboarding_ui/screens/bookSuggestion/bookSuggestion.dart';
import 'package:flutter_onboarding_ui/screens/bookSuggestion/bookSuggestion.dart';
import 'package:flutter_onboarding_ui/screens/pieChart/pieChart.dart';
import 'package:flutter_onboarding_ui/screens/pieChart/pieChart2.dart';
import 'package:flutter_onboarding_ui/screens/pieChart/pieChart3.dart';
import 'package:flutter_onboarding_ui/screens/animation/rive/rive.dart';
import 'package:flutter_onboarding_ui/screens/animation/lottie/lottie.dart';
import 'package:flutter_onboarding_ui/screens/animation/animation/animation.dart';
import 'package:flutter_onboarding_ui/screens/animation/flipCounter/flipCounter.dart';
import 'package:flutter_onboarding_ui/screens/allPages/allPages.dart';
import 'package:flutter_onboarding_ui/screens/practice/practice.dart';

import 'package:flutter/material.dart';

class AllPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MMP All Screens'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new ElevatedButton(
              child: Text('About'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('Book Suggestion'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookSuggestion()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('Contact'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('Expandable'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Expand()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('Practice'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Practice()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('Onboarding Screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingScreen()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('Settings Screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('Flip Counter'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Flipa()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('Animation Fade Through Transition'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FadeThroughTransitionDemo()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('Animation Lottie'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LottieApp()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('Animation Rive'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RiveApp()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('Splash Screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('PieChart Sample1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PieChartSample2()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('PieChart Sample2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pie2()),
                );
              },
            ),
            new ElevatedButton(
              child: Text('PieChart Sample3'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PieChart3()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
