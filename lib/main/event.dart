import 'package:flutter/material.dart';

class eventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Page'),
      ),
      body: Center(
        child: Text(
          '이벤트페이지',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}