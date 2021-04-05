import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_applearn_korean/UI/screen_hello_two.dart';
import 'package:flutter_applearn_korean/UI/screen_logins.dart';
import 'package:flutter_applearn_korean/style/my_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main() {
  runApp(
      new MaterialApp(
        home: new MyApp(),
        debugShowCheckedModeBanner: false,
      ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ScreenHellotwo()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: SvgPicture.asset(iconHome),
            ),
          ),
        )

    );
  }
}