import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'Er-Dr',
          textColor: Colors.black,
          backgroundColor: Colors.yellow.shade300,
          email: 'contact@erdr.in',
        ),
        backgroundColor: Colors.yellow,
        body: ContactUs(
          cardColor: Colors.white,
          textColor: Colors.black,
          logo: AssetImage('images/onboarding/path1.jpg'),
          email: 'adoshi26.ad@gmail.com',
          companyName: 'MMP',
          companyColor: Colors.black,
          phoneNumber: '+917818044311',
          website: 'https://erdr.in/',
          githubUserName: 'AbhishekDoshi26',
          linkedinURL: 'https://www.linkedin.com/in/abhishek-doshi-520983199/',
          tagLine: 'Make My Paper',
          taglineColor: Colors.black,
          twitterHandle: 'AbhishekDoshi26',
          instagram: '_abhishek_doshi',
        ),
      ),
    );
  }
}
