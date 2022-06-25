import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  CardChild: IconContent(),
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

class IconContent extends StatelessWidget {
  const IconContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(FontAwesomeIcons.mars, size: 80),
        SizedBox(height: 15),
        Text("MALE", style: TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.CardChild});

  final Color colour;
  final Widget CardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}

//0XFF1D1E33