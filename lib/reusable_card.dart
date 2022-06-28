import 'package:flutter/material.dart' show BorderRadius, BoxDecoration, BuildContext, Color, Container, EdgeInsets, Key, StatelessWidget, Widget;

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.colour, required this.CardChild}) : super(key: key);

  final Color colour;
  final Widget CardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardChild, //CardChild = widget
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour, //colour = Color
      ),
    );
  }
}