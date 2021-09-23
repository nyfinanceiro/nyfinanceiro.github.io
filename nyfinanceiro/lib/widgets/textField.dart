import 'package:nyfinanceiro/utils/size.dart';
import 'package:nyfinanceiro/utils/theme.dart';
import 'package:flutter/material.dart';

Widget build({ BuildContext? context,  TextEditingController? controller,  String? hintText,  IconData? icon,
   void Function(String?)? onChanged,  int? maxLines, bool? enabled}) {
  ThemeData themeData = Theme.of(context!);

  return TextField(
    controller: controller,
    style: AppTheme.getTextStyle(
        themeData.textTheme.bodyText1,
        fontWeight: 600,
        letterSpacing: 0.2),
    decoration: InputDecoration(
      hintStyle: AppTheme.getTextStyle(
          themeData.textTheme.bodyText1,
          fontWeight: 600,
          letterSpacing: 0,
          color: themeData
              .colorScheme.onBackground
              .withAlpha(180)),
      hintText: hintText ?? "",
      border: InputBorder.none,
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      prefixIcon: Icon(
        icon,
        size: MySize.size22,
      ),
      isDense: true,
      contentPadding: EdgeInsets.all(16),
      errorStyle: TextStyle(color: Colors.black87),
    ),
    onChanged: onChanged,
    maxLines: maxLines,
    enabled: enabled
  );
}