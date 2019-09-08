import 'package:flutter/material.dart';
import 'package:osg5_tugas_3/landingpage.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return LandingPage();
          },
        ),
      );
    });
    return Scaffold(
        body: Center(
      child: CircularProgressIndicator(),
    ));
  }
}
