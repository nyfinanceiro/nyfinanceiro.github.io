import 'package:flutter/material.dart';

// Show logo of application
// @width: Image width
// @height: Image height
Widget build({ double? width,  double? height}) {
  return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Center(
          child: Image(
              image: AssetImage("images/logo.jpg"),
              height: height,
              width: width
          )
      )
  );
}