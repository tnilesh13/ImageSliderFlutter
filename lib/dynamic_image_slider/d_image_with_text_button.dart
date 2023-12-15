import 'package:flutter/material.dart';

class DImageWithTextButton extends StatelessWidget {
  // Map<String, dynamic> imageee;
  dynamic imageee;
  DImageWithTextButton(this.imageee);

  @override
  Widget build(BuildContext context) {
    // print("imageee $imageee");
    return Scaffold(
        body: Column(children: [
      Stack(
        children: [
          Image.asset(
            imageee["image_path"],
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child:
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(imageee["text1"],
                          style: TextStyle(
                              backgroundColor: Colors.transparent,
                              color: Color.fromARGB(255, 243, 255, 21),
                              fontSize: 30,
                             fontWeight: FontWeight.bold)),
                                  ]
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         ElevatedButton(onPressed: (){}, child: Text("My Button")),
                         ]
                        ),
                    ),
                  ],
                )
              )
        ],
      )
    ]));
  }
}

                 