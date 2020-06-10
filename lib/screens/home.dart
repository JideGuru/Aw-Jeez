import 'package:aw_geez/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${Constants.appName}"
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Feather.search),
          ),
        ],
      ),
    );
  }
}
