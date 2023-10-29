import 'package:cbt_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

Future goBack([args, BuildContext? context]) async =>
    Navigator.of(context ?? navigatorKey.currentContext!).pop(args);

Future goRemove([Widget? widget, BuildContext? context]) async =>
    Navigator.of(context ?? navigatorKey.currentContext!).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => widget!),
      (route) => false,
    );

Future goPush([Widget? widget, BuildContext? context]) async =>
    Navigator.of(context ?? navigatorKey.currentContext!).push(
      MaterialPageRoute(
        builder: (_) => widget!,
      ),
    );

Future goReplacement([Widget? widget, BuildContext? context]) async =>
    Navigator.of(context ?? navigatorKey.currentContext!)
        .pushReplacement(MaterialPageRoute(builder: (context) => widget!));
