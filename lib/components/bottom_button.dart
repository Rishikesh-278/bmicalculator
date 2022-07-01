import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  const BottomButton({super.key, required this.onTap, required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        child: Center(child: Text(buttonTitle, style: kLargeButtonTextStyle)),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        height: 80,
        width: double.infinity,
      ),
    );
  }
}