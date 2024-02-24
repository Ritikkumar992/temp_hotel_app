import 'package:flutter/material.dart';
import 'package:hotel_app/screen/login.dart';

void main()
{
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hotel App",
      home: LoginApp(),
      );
  }
}
