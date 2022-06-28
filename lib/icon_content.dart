import 'package:flutter/material.dart' show BuildContext, Colors, Column, Icon, IconData, Key, MainAxisAlignment, SizedBox, StatelessWidget, Text, TextStyle, Widget;

const labelTextStyle = TextStyle(color: Colors.white, fontSize: 18);

class IconContent extends StatelessWidget {
   const IconContent({Key? key, required this.icon, required this.label}) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80), //icon = IconData
        const SizedBox(height: 15),
        Text(
          label, //label = Text
          style: labelTextStyle, //line 3
        )
      ],
    );
  }
}