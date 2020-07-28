import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/app/ui/random_color/RandomColor.dart';

class RandomColorPage extends StatefulWidget {
  @override
  Page createState() => Page();
}

class Page extends State<RandomColorPage> {
  final String text = 'Hey there';
  bool isContainerChange = false;
  Color color = Colors.white;

  void updateBackgroundChangeItem(bool newValue) {
    setState(() {
      isContainerChange = newValue;
    });
  }

  void updateColor() {
    setState(() {
      color = RandomColor.getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget widget =
        isContainerChange ? _getWithColoredContainer() : _getWithColoredText();

    return GestureDetector(onTap: updateColor, child: widget);
  }

  Widget _getWithColoredContainer() {
    return Scaffold(
        backgroundColor: color,
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(text),
                  _getSwitcher()
                ])
        )
    );
  }

  Widget _getWithColoredText() {
    return Scaffold(
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                      text,
                      style: TextStyle(backgroundColor: color)
                  ),
                  _getSwitcher()
                ])
        )
    );
  }

  Widget _getSwitcher() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Switch mode'),
        Switch(
            value: isContainerChange,
            onChanged: updateBackgroundChangeItem
        )
      ],
    );
  }
}
