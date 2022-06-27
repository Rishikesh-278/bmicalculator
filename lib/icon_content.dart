import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(color: Colors.white, fontSize: 18);

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80), //icon = IconData
        SizedBox(height: 15),
        Text(
          label, //label = Text
          style: labelTextStyle, //line 3
        )
      ],
    );
  }
}