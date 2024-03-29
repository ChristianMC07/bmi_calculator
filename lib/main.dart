import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    const Color themeBackgroundColor = Colors.red;
    const Color themeForegroundColor = Colors.white;
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
          primaryColor: Colors.red,
          appBarTheme: const AppBarTheme(
            backgroundColor: themeBackgroundColor,
            centerTitle: true,
            foregroundColor: themeForegroundColor,
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: themeBackgroundColor,
            foregroundColor: themeForegroundColor,
          )),
    );
  }
}

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
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
