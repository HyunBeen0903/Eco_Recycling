import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Page'),
      ),
      body: Center(
        child: Text(
          '홈페이지',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}