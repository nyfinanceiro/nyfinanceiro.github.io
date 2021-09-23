import 'package:nyfinanceiro/utils/size.dart';
import 'package:nyfinanceiro/utils/theme.dart';
import 'package:flutter/material.dart';

GestureDetector build({ BuildContext? context,  void Function()? onTap,  String? text}) {
  ThemeData themeData = Theme.of(context!);

  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(top: MySize.size16!, bottom: MySize.size56),
      child: Center(
        child: Text(
          text!,
          style: AppTheme.getTextStyle(
              themeData.textTheme.bodyText2,
              decoration: TextDecoration.underline),
        ),
      ),
    ),
  );
}