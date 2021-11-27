import 'package:flutter/material.dart';
import 'package:sangath/home_activity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "ujjval vaghsiya";
    return MaterialApp(
      home: home_page(),
    );
  }
}
