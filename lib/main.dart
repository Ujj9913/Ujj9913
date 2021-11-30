import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      //initialRoute: "/login",  use to initial routes
      routes: {
        "/": (context) => const Login(),
        "/login": (context) => const Login()
      },
    );
  }
}
