import 'package:flutter/material.dart';
import 'package:trippas/main.dart';
import 'package:trippas/trip.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }

}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

  loadData();
}

Future<Timer> loadData() async {
  return new Timer(Duration(seconds: 5), onDone);
}
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Text(
          "Trippas",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.blue, fontSize: 39.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal),
        ),
      ),
    );
  }

  void onDone() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TripPage()));
  }

}