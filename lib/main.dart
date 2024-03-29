import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    final Color THEME_BACKGROUND_COLOR = Colors.red;
    final Color THEME_FOREGROUND_COLOR = Colors.white;
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
          primaryColor: Colors.red,
          appBarTheme: AppBarTheme(
            backgroundColor: THEME_BACKGROUND_COLOR,
            centerTitle: true,
            foregroundColor: THEME_FOREGROUND_COLOR,
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: THEME_BACKGROUND_COLOR,
            foregroundColor: THEME_FOREGROUND_COLOR,
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
