import 'package:nyfinanceiro/utils/size.dart';
import 'package:nyfinanceiro/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


// Return app bar of user pages
// @param context: BuildContext?
// @param title: AppBar title
// @param leading: Show if true, hide if false
PreferredSizeWidget build(
    { BuildContext? context,  String? title,  bool? leading,  List<Widget>? actions}) {
  ThemeData themeData = Theme.of(context!);

  return AppBar(
    elevation: 0,
    toolbarHeight: 18,
    centerTitle: true,
    backgroundColor: Colors.white,
    actions: actions,
    automaticallyImplyLeading: leading!,
    titleTextStyle: TextStyle(color: themeData.primaryColor),
    leading: leading ? InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Icon(MdiIcons.chevronLeft, color: themeData.primaryColor),
    ) : null,
    title: Text(title ?? "",
          style: TextStyle(color: Colors.white),
       ),
  );
}