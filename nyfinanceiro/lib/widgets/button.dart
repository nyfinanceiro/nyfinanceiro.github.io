import 'package:nyfinanceiro/utils/fxbutton.dart';
import 'package:nyfinanceiro/utils/size.dart';
import 'package:nyfinanceiro/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget build({required BuildContext context, required void Function() onPressed, required String text}) {
  ThemeData themeData = Theme.of(context);

  return FxButton.small(
    backgroundColor: themeData.colorScheme.primary,
    borderRadiusAll: 4,elevation: 0,
    onPressed: onPressed,
    child: Stack(
      clipBehavior: Clip.none, alignment: Alignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: AppTheme.getTextStyle(
                themeData.textTheme.bodyText2,
                color: themeData
                    .colorScheme.onPrimary,
                letterSpacing: 0.8,
                fontWeight: 700),
          ),
        ),
        Positioned(
          right: 16,
          child: ClipOval(
            child: Container(
              color: themeData
                  .colorScheme.primaryVariant,
              // button color
              child: SizedBox(
                  width: MySize.size30,
                  height: MySize.size30,
                  child: Icon(
                    MdiIcons.arrowRight,
                    color: themeData
                        .colorScheme.onPrimary,
                    size: MySize.size18,
                  )),
            ),
          ),
        ),
      ],
    ),
  );
}