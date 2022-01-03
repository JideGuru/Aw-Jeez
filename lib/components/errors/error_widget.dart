import 'package:flutter/material.dart';

class MyErrorWidget extends StatelessWidget {
  final Function refreshCallBack;
  final bool isConnection;

  const MyErrorWidget({
    Key? key,
    required this.refreshCallBack,
    this.isConnection = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            '😔',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14.0),
            child: Text(
              '${getErrorText(context)}',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).textTheme.headline6?.color,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => refreshCallBack(),
            child: const Text(
              'Try again',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  getErrorText(BuildContext context) {
    if (isConnection) {
      return 'Connection problems';
    } else {
      return 'An error occurred';
    }
  }
}
