import 'package:flutter/material.dart';

class detailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Page'),
      ),
      body: Center(
        child: Text(
          '이용내역',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}