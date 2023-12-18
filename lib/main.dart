import 'package:flutter/material.dart';
import 'package:flutter_all_basics/dynamic_image_slider/d2_image_slider.dart';
import 'package:flutter_all_basics/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: HomeScreen());
  }
}