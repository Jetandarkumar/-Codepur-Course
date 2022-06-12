import 'package:first/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const int days = 20;
    const String name = "Codepur";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
          child: Container(
              child: const Text("Welcome to $days days of code with, $name"))),
      drawer: MyDrawer(),
    );
  }
}
