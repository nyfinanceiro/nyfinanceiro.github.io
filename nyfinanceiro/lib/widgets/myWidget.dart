import 'package:nyfinanceiro/widgets/appbar.dart' as appbar;
import 'package:nyfinanceiro/widgets/button.dart' as button;
import 'package:nyfinanceiro/widgets/container.dart' as container;
import 'package:nyfinanceiro/widgets/dialog.dart' as dialog;
import 'package:nyfinanceiro/widgets/dropdownbutton.dart' as dropdownbutton;
import 'package:nyfinanceiro/widgets/header.dart' as header;
import 'package:nyfinanceiro/widgets/logo.dart' as logo;
import 'package:nyfinanceiro/widgets/textButton.dart' as textbutton;
import 'package:nyfinanceiro/widgets/textFormField.dart' as textformfield;
import 'package:nyfinanceiro/widgets/textGesture.dart' as textgesture;
import 'package:nyfinanceiro/widgets/textField.dart' as textfield;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyWidget {
  // Customized AppBar
  static PreferredSizeWidget AppBar({ BuildContext? context,  String? title,  bool? leading,  List<Widget>? actions}) {
    return appbar.build(
      context: context,
      title: title,
      leading: leading,
      actions: actions
    );
  }

  // Customize button
  static Widget Button({required BuildContext context, required void Function() onPressed, required String text}) {
    return button.build(
        context: context,
        onPressed: onPressed,
        text: text
    );
  }

  // Customized Container
  static Widget Container({required BuildContext context, required double width, required Widget? child}) {
    return container.build(
        context: context,
        width: width,
        child: child
    );
  }

  // Customized AlertDialog
  static AlertDialog? ShowDialog({ BuildContext? context,  String? title,  String? content,
     void Function()? onCancelPressed,  void Function()? onConfirmPressed}) {
    return dialog.show(
        context: context,
        title: title,
        content: content,
        onCancelPressed: onCancelPressed,
        onConfirmPressed: onConfirmPressed
    );
  }

  // Customized DropDownButton
  static Widget DropDownButton({ BuildContext? context,  String? hint,  IconData? icon,  List<String>? items,
     String? Function(String?)? validator,  void Function(String?)? onChanged}) {
    return dropdownbutton.build(
        context: context,
        hint: hint,
        icon: icon,
        items: items,
        validator: validator,
        onChanged: onChanged
    );
  }

  // Customized header
  static Widget Header({ BuildContext? context,  String? title,  String? subtitle}) {
    return header.build(
      context: context,
      title: title,
      subtitle: subtitle
    );
  }

  // Customize logo
  static Widget Logo({ double? width,  double? height}) {
    return logo.build(
        width: width,
        height: height
    );
  }

  // Customized TextButton
  static Widget TextButton({ BuildContext? context,  Alignment? aligment,  void Function()? onPressed,
     String? text}) {
    return textbutton.build(
        context: context,
        aligment: aligment,
        onPressed: onPressed,
        text: text
    );
  }

  // Customized TextFormField
  static Widget TextFormField({ BuildContext? context,  TextEditingController? controller,  String? hintText,
     TextCapitalization? textCapitalization,  TextInputType? keyboardType,  bool? obscureText,
     List<TextInputFormatter>? inputFormatters,  int? maxLines,
     bool? enabled,  TextAlign? textAlign,  Widget? prefixIcon}) {
    return textformfield.build(
        context: context,
        controller: controller,
        hintText: hintText,
        textCapitalization: textCapitalization,
        keyboardType: keyboardType,
        obscureText: obscureText,
        inputFormatters: inputFormatters,
        maxLines: maxLines,
        enabled: enabled,
        textAlign: textAlign,
        prefixIcon: prefixIcon
    );
  }

  // Customized Text with GestureDetector
  static GestureDetector TextGestureDetector({ BuildContext? context,  void Function()? onTap,  String? text}) {
    return textgesture.build(
        context: context,
        onTap: onTap,
        text: text
    );
  }

  // Customize TextField
  static Widget TextField({ BuildContext? context,  TextEditingController? controller,  String? hintText,  IconData? icon,
       void Function(String?)? onChanged,  int? maxLines, bool? enabled}) {
    return textfield.build(
        context: context,
        controller: controller,
        hintText: hintText,
        icon: icon,
        onChanged: onChanged,
        maxLines: maxLines,
        enabled: enabled
    );
  }
}