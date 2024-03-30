import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    const Color themeBackgroundColor = Color(0xFF0A0E21);
    const Color themeForegroundColor = Color(0xFFE0E0E0);
    return MaterialApp(
      home: const InputPage(),
      theme: ThemeData(
        colorScheme: const ColorScheme(
          background: themeBackgroundColor,
          brightness: Brightness.light,
          error: Colors.red,
          onBackground: themeForegroundColor,
          onError: themeForegroundColor,
          primary: Color(0xFF21244d),
          secondary: Colors.red,
          surface: Color(0xFF1d1e33),
          onPrimary: themeForegroundColor,
          onSecondary: themeForegroundColor,
          onSurface: themeForegroundColor,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),
    );
  }
}
