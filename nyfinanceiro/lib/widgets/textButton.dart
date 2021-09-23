import 'package:nyfinanceiro/utils/size.dart';
import 'package:nyfinanceiro/utils/theme.dart';
import 'package:flutter/material.dart';

Widget build({ BuildContext? context,  Alignment? aligment,  void Function()? onPressed,
       String? text}) {
  ThemeData themeData = Theme.of(context!);

  return Container(
      margin: EdgeInsets.only(left: MySize.size24!, right: MySize.size24!),
      alignment: aligment, //Alignment.bottomRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(text!,
            style: AppTheme.getTextStyle(
                themeData.textTheme.bodyText2,
                letterSpacing: 0.5,
                color: themeData
                    .colorScheme.onBackground
                    .withAlpha(140),
                fontWeight: 700
            )
        ),
      )
  );
}