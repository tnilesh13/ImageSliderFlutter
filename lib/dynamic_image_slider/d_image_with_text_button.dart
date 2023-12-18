import 'package:flutter/material.dart';
import 'package:flutter_all_basics/dynamic_image_slider/SliderModel.dart';
import 'package:flutter_all_basics/dynamic_image_slider/test.dart';
import 'package:flutter_all_basics/helper/util.dart';

class DImageWithTextButton extends StatelessWidget {
  SliderItems myData;
  DImageWithTextButton(this.myData);

  @override
  Widget build(BuildContext context) {
    Color buttonColor = Util.getColorFromHex(myData.sliderButtonColor!);
    return Container(
      child: InkWell(
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => Test(myData.sliderBannerUID!)));
                print(myData.sliderBannerUID);
              },
        child: Stack(
          children: [
            // Image.asset(
            //   imageee["image_path"],
            //   fit: BoxFit.cover,
            //   width: double.infinity,
            // ),
            Image.network(
              myData.sliderLink!,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              bottom: 70,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(myData.sliderText!,
                        style: const TextStyle(
                            backgroundColor: Colors.transparent,
                            color: Color.fromARGB(255, 243, 255, 21),
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print("clicked");
                              print("my ${myData.sliderButtonClicked}");
                              myData.sliderButtonClicked;
                            },
                            child: Text(
                              myData.sliderButtonText!,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: buttonColor),
                          )
                        ]),
                  ),
                ],
              )
            )
          ],
        ),
      )
    );
  }
}