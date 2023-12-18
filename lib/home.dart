import 'package:flutter/material.dart';
import 'package:flutter_all_basics/dynamic_image_slider/d2_image_slider.dart';
import 'package:flutter_all_basics/product_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text("Slider Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Expanded(
          //   // height: 300,
          //   child: ImageSlider(),
          // ),
          ImageSlider(),
          ProductBar(),
        ],
      )
    );
  }
}