import 'dart:convert';
import 'package:flutter/services.dart' as root_bundle;
import 'package:flutter/material.dart';
import 'package:flutter_all_basics/dynamic_image_slider/SliderModel.dart';
import 'package:flutter_all_basics/dynamic_image_slider/custom_slider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  // List imagesList = [
  //   {"id": 1, "image_path": "assets/images/m1.jpg"},
  //   {"id": 2, "image_path": "assets/images/m2.jpg"},
  //   {"id": 3, "image_path": "assets/images/m3.jpg"},
  //   {"id": 4, "image_path": "assets/images/m4.jpg"},
  // ];

  @override
  void initState() {
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // future: DefaultAssetBundle.of(context).loadString('assets/json/myJson.json'),
      future: root_bundle.rootBundle.loadString("assets/json/myJson.json"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Map<String, dynamic> jsonData = json.decode(snapshot.data.toString());
          Sliders newSlider = Sliders.fromJson(jsonData["Sliders"]);
          
          return CustomSlider(newSlider);
        } else if (snapshot.hasError) {
          return Text('Error loading JSON'); // Handle error
        } else {
          return CircularProgressIndicator(); // Show a loading indicator
        }
      },       
    );
  }
}
                      // scrollPhysics: BouncingScrollPhysics(),
                      // autoPlay: true,
                      // aspectRatio: 2,
                      // viewportFraction: 1,