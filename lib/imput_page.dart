import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmicalculator/reusable_card.dart';
import 'icon_content.dart';

const BottomContaiterHeight = 80;
const ExpandedResuableCardColor = Color(0XFF1D1E33);
const BottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: ExpandedResuableCardColor,
                      CardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                ),
              ),
                  Expanded(
                    child: ReusableCard(
                      colour: ExpandedResuableCardColor,
                      CardChild: IconContent(icon: FontAwesomeIcons.venus,label: 'FEMALE',),
                ),
              ),
            ],
          )),
          Expanded(
              child: ReusableCard(
                colour: ExpandedResuableCardColor,
                CardChild: Row(),
          )),
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: ExpandedResuableCardColor,
                      CardChild: Column(),
                ),
              ),
                  Expanded(
                    child: ReusableCard(
                      colour: ExpandedResuableCardColor,
                      CardChild: Column(),
                ),
              ),
            ],
          )),
          Container(
            color: BottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            height: 80,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

//0XFF1D1E33
