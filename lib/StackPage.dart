import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          )),
      Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          )),
      Align(
          alignment: Alignment.center,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          )),
      Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.black,
          )),
      Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.deepPurple,
          ))
    ]);
  }
}
