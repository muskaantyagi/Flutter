import 'package:flutter/material.dart';

import 'dart:async';

import 'package:flutter_complete_guide/walkthrough.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WalkThrough(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: Image.asset('assets/images/igLogo.png'),
        ),
      ),
    );
  }
}
