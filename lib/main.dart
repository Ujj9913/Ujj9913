import 'package:flutter/material.dart';
import 'package:sangath/activity/home_activity.dart';
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'dart:ui';

import 'package:sangath/activity/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: "/login",  use to inisal routes
      routes: {
        "/": (context) => const HomeActivity(),
        "/login": (context) => const login()
      },
    );
  }
}
