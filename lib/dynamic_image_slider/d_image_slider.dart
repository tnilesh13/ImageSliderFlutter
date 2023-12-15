import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_basics/dynamic_image_slider/d_image1.dart';
import 'package:flutter_all_basics/dynamic_image_slider/d_image_with_text.dart';
import 'package:flutter_all_basics/read_json.dart';

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
  late Map<dynamic, dynamic> myMap;
  var myNewList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ReadJsonFile.readJsonData(path: "assets/json/myJson.json").then((value) {
      setState(() {
        myMap = value["Sliders"];
        // print("valueeee$value");
        // print("myMapppp$myMap");
        // print("itttemss2${myMap["Items"]}");
        myNewList = myMap["Items"];
        print("myNewListttttt$myNewList");
        print("toString${myNewList.toString()}");
        // print("myNewListttttt$myNewList}");
        print("myyyyyyyyy${myNewList[0]}");
      });
    });
  }

  
  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Slider Example"),
        ),
        body: Column(children: [
          Stack(
            children: [
              InkWell(
                onTap: () {},
                child: CarouselSlider(
                  // items: [
                  //   Image.network("https://unsplash.com/photos/a-person-standing-on-top-of-a-mountain-under-a-cloudy-sky-Ah3ir6fxfqg")
                  // ],
                  items: 
                      // myList
                      // .map((image) {
                      //   print("imageeee$image");
                      //     return DImageWithText(image);
                      //   }
                      // )
                      // .toList()

                      // return DImageWithText(myList["Items"])
                    
                    //   myMap.entries.map((myData) {
                    //     print("myDataaaaa$myData");
                    //   return DImageWithText(myData);
                    // }).toList(),

                   

                      myNewList
                      .map((val) {
                        print("vallllllllllll$val");
                          return DImageWithText(val);
                        }
                      )
                      .toList(),
                      
                  carouselController: carouselController,
                  options: CarouselOptions(
                      // height: 200.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.easeOutCirc,
                      enableInfiniteScroll: true,
                      viewportFraction: 0.8,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      }),
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: myMap.entries.map((entry) {
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
                                ? Color.fromARGB(255, 0, 204, 255)
                                : Color.fromARGB(255, 231, 209, 9),
                          ),
                        ),
                      );
                    }).toList(),
                  ))
            ],
          )
        ]));
  }
}
                      // scrollPhysics: BouncingScrollPhysics(),
                      // autoPlay: true,
                      // aspectRatio: 2,
                      // viewportFraction: 1,