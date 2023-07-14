import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fsdflutter/tutorials/navigation_drawer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigationDrawerPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text("FSDFlutter", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),),
        ),
      ),
    );
  }
}

