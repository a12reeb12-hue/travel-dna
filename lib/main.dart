import 'package:tour/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import'registerscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
     const MyApp({super.key});

     @override
     State<MyApp> createState() => _MyAppState();
     }

class _MyAppState extends State<MyApp>{
    bool showPassward=true;

final passwordController = TextEditingController();

final name = TextEditingController();
final email = TextEditingController();
final password = TextEditingController();
final confirmedPassword = TextEditingController();

@override
Widget build(BuildContext context) {
return GetMaterialApp(
home:Scaffold(
appBar: AppBar(
title: const Text("Whatsapp"),
backgroundColor:
Colors.green,
),
    body:RegisterScreen(name: name, email: email, password: password, confirmedPassword: confirmedPassword)
   )
  );
}
}