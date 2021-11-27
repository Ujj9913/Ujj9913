

import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "ujjval vaghsiya";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("sangadh"),
      ),
      body: Center(
        child: Text("hello i $name am  lear to $days"),
      ),
      drawer: const Drawer(),
    );
  }
}
