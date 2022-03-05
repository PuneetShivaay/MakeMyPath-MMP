import 'package:flutter/material.dart';
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









void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
     // home: OnboardingScreen(),
      //home: SplashScreen(),
      // home: SplashScreen2(),
      // home: Carousel(),
      //home: About(),
      //home: SettingsScreen(),
      //home: Contact(),
      //home: Expand(),
      //home: BookSuggestion(),
      //home: PieChartSample2(),
           // home: Pie2(),
        //home: PieChart3(),
       // home: RiveApp(),
          //home: LottieApp(),
          //home: Flipa(),
        //  home: FadeThroughTransitionDemo(),
          home: AllPages(),



    );
  }
}
