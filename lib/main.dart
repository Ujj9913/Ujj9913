import 'package:flutter/material.dart';
import 'package:sangath/activity/home_activity.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),
      themeMode: ThemeMode.system,
    );
  }
}
