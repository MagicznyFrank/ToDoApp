import 'package:flutter/material.dart';
import 'package:todo_app/screens/welcome_screen.dart';
import 'routing.dart';
import 'screens/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    home: welcome_screen();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: welcome_screen(),
    );
  }
}