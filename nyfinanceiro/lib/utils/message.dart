import 'package:flutter/material.dart';

void showMessage({ BuildContext? context,  String? text}) {
  ScaffoldMessenger.of(context!).showSnackBar(
      SnackBar(
          content: Center(
              widthFactor: 0.0,
              heightFactor: 0.0,
              child: Text("$text")
          )
      )
  );
}

void errorMessage({ BuildContext? context,  String? text}) {
  ScaffoldMessenger.of(context!).showSnackBar(
      SnackBar(
          backgroundColor: Colors.redAccent,
          content: Center(
              widthFactor: 0.0,
              heightFactor: 0.0,
              child: Text("$text",
                style: TextStyle(color: Colors.white))
          )
      )
  );
}