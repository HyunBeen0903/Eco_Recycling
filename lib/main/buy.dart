import 'package:flutter/material.dart';

class buyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Page'),
      ),
      body: Center(
        child: Text(
          '티켓판매 페이지',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}