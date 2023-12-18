import 'package:flutter/material.dart';

class ProductBar extends StatelessWidget {
  final List<String> productData = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Products", style: TextStyle(fontSize: 20, color: Colors.brown.shade900),),
        ),
        
        Padding(
          padding: const EdgeInsets.only(top: 6.0, left: 6.0),
          child: Container(
            height: 170.0, // Set the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productData.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
              onTap: () {
                  print(index+1);
              },
                  child: Card(
                    margin: EdgeInsets.all(6.0),
                    child: Container(
                      width: 150.0, // Set the width as needed
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          productData[index],
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}