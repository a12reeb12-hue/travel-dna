import 'package:flutter/material.dart';

class ChatHistory extends StatelessWidget {
  ChatHistory({super.key, required this.name, required int n});

  final String name;

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(name),
        ),
        body: Container(
          child:Text('Body'),
        ),
      ),
    );
  }
}