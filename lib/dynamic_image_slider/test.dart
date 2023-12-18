import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  int id;
  Test(this.id);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("id$id"),
    );
  }
}