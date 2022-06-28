import 'package:flutter/material.dart' show AppBar, BuildContext, Color, Column, Container, EdgeInsets, Expanded, GestureDetector, Key, Row, Scaffold, State, StatefulWidget, Text, Widget;
import 'package:font_awesome_flutter/font_awesome_flutter.dart' show FontAwesomeIcons;
import 'package:bmicalculator/reusable_card.dart' show ReusableCard;
import 'icon_content.dart' show IconContent;

const BottomContaiterHeight = 80;
const ActiveCardColor = Color(0XFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const BottomContainerColor = Color(0xFFEB1555);

enum Gender
{
  male, female
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


   late final Gender selectedGender;

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
                    child: GestureDetector(
                      onTap: () {
                        setState((){
                          selectedGender = Gender.male; //ref line 24
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == Gender.male ? ActiveCardColor: inActiveCardColor, //Ternary Operators
                        CardChild: const IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female; //ref line 24
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == Gender.female ? ActiveCardColor: inActiveCardColor, //Ternary operators
                        CardChild: const IconContent(icon: FontAwesomeIcons.venus,label: 'FEMALE'),
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
              child: ReusableCard(
                colour: ActiveCardColor,
                CardChild: Row(),
              )),
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: ActiveCardColor,
                      CardChild: Column(),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: ActiveCardColor,
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
