import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: CardElement(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: CardElement(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CardElement(
              colour: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardElement(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: CardElement(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 80.0,
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
          )
        ]),
      ),
    );
  }
}

class CardElement extends StatelessWidget {
  const CardElement({super.key, required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
