import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80;
const Color activeCardColour = Color(0xFF1D1E33);
const Color inactiveCardColour = Color(0xFF111328);
const Color bottomContainerColour = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: CardElement(
                      cardChild: CardColumn(
                        columnText: 'MALE',
                        columnIcon: FontAwesomeIcons.mars,
                      ),
                      colour: selectedGender == Gender.male
                          ? activeCardColour
                          : inactiveCardColour,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: CardElement(
                      cardChild: CardColumn(
                        columnIcon: FontAwesomeIcons.venus,
                        columnText: 'FEMALE',
                      ),
                      colour: selectedGender == Gender.female
                          ? activeCardColour
                          : inactiveCardColour,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardElement(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardElement(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: CardElement(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
          )
        ]),
      ),
    );
  }
}

class CardColumn extends StatelessWidget {
  const CardColumn(
      {super.key, required this.columnText, required this.columnIcon});

  final String columnText;
  final IconData columnIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          columnIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          columnText,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8d8e98),
          ),
        )
      ],
    );
  }
}

class CardElement extends StatelessWidget {
  const CardElement({super.key, required this.colour, this.cardChild});
  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
