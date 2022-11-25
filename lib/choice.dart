import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';
class choice extends StatelessWidget {
  const choice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CHOOSE ANY ONE"),
          centerTitle: true,
        ),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
