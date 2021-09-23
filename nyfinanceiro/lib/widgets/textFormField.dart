import 'package:nyfinanceiro/utils/size.dart';
import 'package:nyfinanceiro/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

Widget build({ BuildContext? context,  TextEditingController? controller,  String? hintText,
         TextCapitalization? textCapitalization,  TextInputType? keyboardType,  bool? obscureText,
         List<TextInputFormatter>? inputFormatters,  int? maxLines,
         bool? enabled,  TextAlign? textAlign,  Widget? prefixIcon}) {
  ThemeData themeData = Theme.of(context!);

  return TextFormField(
    controller: controller,
    style: AppTheme.getTextStyle(
        themeData.textTheme.bodyText1,
        fontWeight: 600,
        letterSpacing: 0.2),
    decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintStyle: AppTheme.getTextStyle(
            themeData.textTheme.bodyText1,
            fontWeight: 600,
            letterSpacing: 0,
            color: themeData
                .colorScheme.onBackground
                .withAlpha(180)),
        hintText: hintText,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        isDense: true,
        contentPadding: EdgeInsets.all(16),
        errorStyle: TextStyle(color: Colors.black87)
    ),
    autofocus: false,
    toolbarOptions: ToolbarOptions(copy: true, paste: true, selectAll: true),
    keyboardType: keyboardType,
    inputFormatters: inputFormatters,
    textCapitalization: textCapitalization ?? TextCapitalization.none,
    obscureText: obscureText ?? false,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    maxLines: maxLines ?? 1,
    enabled: enabled ?? true,
    textAlign: textAlign ?? TextAlign.start,
  );
}