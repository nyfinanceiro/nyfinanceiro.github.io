import 'package:nyfinanceiro/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget build({required BuildContext context, required double width, required Widget? child}) {
  ThemeData _themeData = Theme.of(context);

  return Container(
      margin: EdgeInsets.all(10),
      width: width,
      decoration: new BoxDecoration(
        color: _themeData.cardTheme.color,
        borderRadius: BorderRadius.all(Radius.circular(MySize.size16!)),
        boxShadow: [
          BoxShadow(
            blurRadius: 8.0,
            color: _themeData.cardTheme.shadowColor!.withAlpha(25),
            offset: Offset(0, 3)
          ),
        ]
      ),
      child: child
  );
}