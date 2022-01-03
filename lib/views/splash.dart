import 'dart:async';

import 'package:aw_geez/util/navigate.dart';
import 'package:aw_geez/views/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTimeout() {
    return Timer(const Duration(seconds: 2), handleTimeout);
  }

  void handleTimeout() {
    changeScreen();
  }

  changeScreen() async {
    Navigate.pushPageReplacement(context, const Home());
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
              color: Theme.of(context).textTheme.headline6?.color,
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
