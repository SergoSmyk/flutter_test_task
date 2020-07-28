import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/app/ui/random_color/RandomColorPage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomColorPage()
    );
  }
}