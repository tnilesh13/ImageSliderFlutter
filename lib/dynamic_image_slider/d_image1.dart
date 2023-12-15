import 'package:flutter/material.dart';

class DImage1 extends StatelessWidget{
  // Map<String, dynamic> imageee;
  dynamic imageee;
  DImage1(this.imageee);


  // Map<String, dynamic> image = {
  //   "image_path1": "assets/images/1.jpg",
  //   "image_path2": "assets/images/2.jpg",
  // };

  @override
  Widget build(BuildContext context) {
    print("imageee $imageee");
    return Container(
      child: 
        Image.asset(
        imageee["image_path"],
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}