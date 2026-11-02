import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
   const Dashboard({super.key, required this. name, required this. email});
    
    final String name;
    final String email;
   
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Text('Email:$email'),
          Text('Full name:$name'),
          Text('hello'),
        ],)
      ),
    );
  }
}