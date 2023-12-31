import 'package:flutter/material.dart';
import 'package:flutter_all_basics/dynamic_image_slider/SliderModel.dart';
import 'package:flutter_all_basics/dynamic_image_slider/test.dart';

class DImage1 extends StatelessWidget{
  // Map<String, dynamic> imageee;
  SliderItems myData;
  DImage1(this.myData);


  // Map<String, dynamic> image = {
  //   "image_path1": "assets/images/1.jpg",
  //   "image_path2": "assets/images/2.jpg",
  // };

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
            InkWell(
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => Test(myData.sliderBannerUID!)));
                print(myData.sliderBannerUID);
              },
              child: Image.network(
                myData.sliderLink!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
    );
  }
}