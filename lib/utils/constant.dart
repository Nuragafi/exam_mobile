import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

double width([BuildContext? context]) =>
    MediaQuery.of(context ?? navigatorKey.currentContext!).size.width;
double height([BuildContext? context]) =>
    MediaQuery.of(context ?? navigatorKey.currentContext!).size.height;
