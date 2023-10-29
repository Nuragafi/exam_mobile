import 'package:cbt_mobile/utils/constant.dart';
import 'package:cbt_mobile/view/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      home: const Login(),
      theme: ThemeData(fontFamily: 'Times New Roman'),
    );
  }
}
