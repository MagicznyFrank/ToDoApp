import 'package:flutter/material.dart';
import 'package:todo_app/screens/task_screen.dart';
import 'package:todo_app/screens/welcome_screen.dart';
import 'screens/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => welcome_screen(),
        '/mainscreen': (_) => mainscreen(),
      },
      home: welcome_screen(),
    );
  }
}