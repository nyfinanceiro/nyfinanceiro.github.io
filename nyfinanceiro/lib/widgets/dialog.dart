import 'package:flutter/material.dart';


// show the dialog
AlertDialog? show({ BuildContext? context,  String? title,  String? content,
     void Function()? onCancelPressed,  void Function()? onConfirmPressed}) {
  showDialog(
    context: context!,
    builder: (context) {
      return AlertDialog(
          content: Text("$content"),
          actions: [
            TextButton(onPressed: onCancelPressed, child: Text("Cancelar")),
            TextButton(onPressed: onConfirmPressed, child: Text("Confirmar")),
          ]
      );
    }
  );
}