import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80.0;
const Color cardBackgroundColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    myColor: cardBackgroundColor,
                    cardChild: IconContent(
                      iconText: "MALE",
                      fontAwesomeIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    myColor: cardBackgroundColor,
                    cardChild: IconContent(
                      iconText: "FEMALE",
                      fontAwesomeIcon: FontAwesomeIcons.venus,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              myColor: cardBackgroundColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    myColor: cardBackgroundColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    myColor: cardBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color myColor;
  final Widget? cardChild;

  const ReusableCard({
    super.key,
    required this.myColor,
    this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: myColor,
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  final String iconText;
  final IconData fontAwesomeIcon;

  const IconContent(
      {super.key, required this.iconText, required this.fontAwesomeIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          fontAwesomeIcon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: TextStyle(
            fontSize: 18.00,
          ),
        ),
      ],
    );
  }
}
