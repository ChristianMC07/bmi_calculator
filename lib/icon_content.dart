import 'package:flutter/material.dart';

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
