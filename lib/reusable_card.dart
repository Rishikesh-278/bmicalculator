import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.CardChild});

  final Color colour;
  final Widget CardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardChild, //CardChild = widget
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour, //colour = Color
      ),
    );
  }
}