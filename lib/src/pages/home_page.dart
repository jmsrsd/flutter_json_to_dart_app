import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: 48.0,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 48.0,
            child: Row(
              children: [],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  'Top',
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Bottom',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
