import 'dart:async';

import 'package:aw_geez/screens/home.dart';
import 'package:aw_geez/util/constants.dart';
import 'package:aw_geez/util/functions.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTimeout() {
    return new Timer(Duration(seconds: 2), handleTimeout);
  }

  void handleTimeout() {
    changeScreen();
  }

  changeScreen() async {
    Functions.pushPageReplacement(
      context,
      Home(),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/black_icon.png",
              color: Theme.of(context).textTheme.title.color,
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
