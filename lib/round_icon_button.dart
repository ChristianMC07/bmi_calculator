import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, this.icon, this.customFunction});

  final IconData? icon;
  final void Function()? customFunction;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: customFunction,
      shape: CircleBorder(),
      elevation: 6.0,
      disabledElevation: 6.0,
      fillColor: kButtonsBackgroundColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
