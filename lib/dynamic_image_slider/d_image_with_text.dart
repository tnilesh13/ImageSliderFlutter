import 'package:flutter/material.dart';
import 'package:flutter_all_basics/dynamic_image_slider/SliderModel.dart';

class DImageWithText extends StatelessWidget {
  // Map<String, dynamic> imageee;
  SliderItems myData;
  DImageWithText(this.myData);

  @override
  Widget build(BuildContext context) {
    // print("imageee $imageee");
    return Scaffold(
        backgroundColor: Colors.red,
        body: Column(children: [
          Stack(
            children: [
              // Image.asset(
              //   myData["image_path"],
              //   fit: BoxFit.cover,
              //   width: double.infinity,
              // ),
              Image.network(
                myData.sliderLink!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                  bottom: 100,
                  left: 0,
                  right: 0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(myData.sliderText!,
                            style: const TextStyle(
                                backgroundColor: Colors.transparent,
                                color: Color.fromARGB(255, 243, 255, 21),
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ]))
            ],
          )
        ]));
  }
}
