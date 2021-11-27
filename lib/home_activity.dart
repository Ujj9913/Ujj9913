import 'dart:html';

import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "ujjval vaghsiya";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sangadh"),
         
      ),
      body :Center(
        child: Container(
          child: Text("hello i $name am  lear to $days"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
