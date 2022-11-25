import 'package:flutter/material.dart';
import 'package:sampleui/home.dart';
import 'package:sampleui/intro.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:sampleui/splaash.dart';
void main()
{
  runApp(My());
}
class My extends StatelessWidget {
  const My({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => splash(),
        "intro" : (context)=>intro(),
        "home" : (context) => Home(),
      },
    );
  }
}
