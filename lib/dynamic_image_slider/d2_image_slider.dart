import 'dart:convert';
import 'package:flutter/services.dart' as root_bundle;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_basics/dynamic_image_slider/SliderModel.dart';
import 'package:flutter_all_basics/dynamic_image_slider/d_image1.dart';
import 'package:flutter_all_basics/dynamic_image_slider/d_image_with_text.dart';
import 'package:flutter_all_basics/dynamic_image_slider/d_image_with_text_button.dart';
import 'package:flutter_all_basics/dynamic_image_slider/util.dart';

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
  // List imagesListWithText = [
  //   {"id": 1, "image_path": "assets/images/m1.jpg", "text1":"Image 1"},
  //   {"id": 2, "image_path": "assets/images/m2.jpg", "text1":"Image 2"},
  //   {"id": 3, "image_path": "assets/images/m3.jpg", "text1":"Image 3"},
  //   {"id": 4, "image_path": "assets/images/m4.jpg", "text1":"Image 4"},
  // ];

  @override
  void initState() {
    super.initState();
  }
  
  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // future: DefaultAssetBundle.of(context).loadString('assets/json/myJson.json'),
      future: root_bundle.rootBundle.loadString("assets/json/myJson.json"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Map<String, dynamic> jsonData = json.decode(snapshot.data.toString());
          Sliders newSlider = Sliders.fromJson(jsonData["Sliders"]);

          var myBool=true;
          if (newSlider.sliderViewType! == "Enlarge") {
            myBool = true;
          } else {
            myBool = false;
          }

          Color indicatorSelectedColor = Util.getColorFromHex(newSlider.indicatorSelectedColor!);
          Color indicatorUnSelectedColor = Util.getColorFromHex(newSlider.indicatorUnSelectedColor!);

          // double padding = double.parse(newSlider.padding!);
          List <Widget> carouselItems = newSlider.items!.map((item) {
            if(item.sliderType == "Image") {
              return DImage1(item);
            } else if (item.sliderType == "ImageWithText") {
              return DImageWithText(item);
            } else {
              return DImageWithTextButton(item);
            }
          }).toList();
          
          return  Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Slider Example"),
            ),
            body: Column(children: [
              Stack(
              children: [
                InkWell(
                  onTap: () {},
                  child:   
                  CarouselSlider(
                    items: carouselItems,
                    carouselController: carouselController,
                    options: CarouselOptions(
                        // height: 200.0,
                        
                      enlargeCenterPage: myBool,
                      autoPlay: newSlider.autoPlay!,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.easeOutCirc,
                      enableInfiniteScroll: true,
                      viewportFraction: newSlider.viewPortFraction!,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      }
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: newSlider.items!.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                          carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentIndex == entry.key ? 17 : 7,
                            height: 7,
                            // height: 7.0,
                            margin: const EdgeInsets.symmetric(horizontal: 3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == entry.key
                                ? indicatorSelectedColor
                                : indicatorUnSelectedColor
                            ),
                          ),
                        );
                      }
                    ).toList(),
                  )
                )
              
              ],
            )
          ])                
        );
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