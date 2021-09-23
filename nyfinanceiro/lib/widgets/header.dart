import 'package:nyfinanceiro/utils/size.dart';
import 'package:nyfinanceiro/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget build({ BuildContext? context,  String? title,  String? subtitle}) {
  ThemeData themeData = Theme.of(context!);
  MySize().init(context);

  return Column(
    children: [
      Container(
          margin: EdgeInsets.only(left: MySize.size16!, right: MySize.size16!),
          child: Center(
            child: Text(
              title ?? "",
              style: AppTheme.getTextStyle(
                  themeData.textTheme.headline5,
                  fontWeight: 800),
            ),
          )),
      Container(
        margin:
        EdgeInsets.only(left: MySize.size48!, right: MySize.size48!, top: MySize.size10!),
        child: Text(
          subtitle ?? "",
          softWrap: true,
          style: AppTheme.getTextStyle(
              themeData.textTheme.bodyText1,
              fontWeight: 600,
              height: 1.2,
              color: themeData.colorScheme.onBackground
                  .withAlpha(100)),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}