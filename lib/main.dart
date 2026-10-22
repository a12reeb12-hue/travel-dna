
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('My App'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 60,
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 60,
                ),
                Container(
                  color: Colors.green,
                  height: 100,
                  width: 60,
                ),
                Container(
                  color: Colors.pink,
                  height: 100,
                  width: 60,
                ),
                Container(
                  color: Colors.purple,
                  height: 100,
                  width: 60,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 60,
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 60,
                ),
                Container(
                  color: Colors.green,
                  height: 100,
                  width: 60,
                ),
                Container(
                  color: Colors.pink,
                  height: 100,
                  width: 60,
                ),
                Container(
                  color: Colors.purple,
                  height: 100,
                  width: 60,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



