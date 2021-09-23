import 'package:nyfinanceiro/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget build({ BuildContext? context,  String? hint,  IconData? icon,  List<String>? items,
           String? Function(String?)? validator,  void Function(String?)? onChanged}) {
  ThemeData _themeData = Theme.of(context!);

  return DropdownButtonFormField<String>(
    style: AppTheme.getTextStyle(
        _themeData.textTheme.bodyText1,
        fontWeight: 600,
        letterSpacing: 0.2),
    decoration: InputDecoration(
        hintStyle: AppTheme.getTextStyle(
            _themeData.textTheme.bodyText1,
            fontWeight: 600,
            letterSpacing: 0,
            color: _themeData
                .colorScheme.onBackground
                .withAlpha(180)),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        isDense: true,
        contentPadding: EdgeInsets.all(16),
        errorStyle: TextStyle(color: Colors.black87)
    ),
    hint: Text("${hint ?? ""}"),
    dropdownColor: Colors.white,
    icon: Icon(icon),
    iconEnabledColor: _themeData.primaryColor,
    iconDisabledColor: Colors.red,
    validator: validator,
    items: items!
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
    onChanged: onChanged
  );
}