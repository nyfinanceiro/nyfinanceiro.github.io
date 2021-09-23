import 'package:flutter/material.dart';
import 'package:nyfinanceiro/utils/theme.dart';
import 'package:nyfinanceiro/views/login_view.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            home: LoginView()
      );
  }
}