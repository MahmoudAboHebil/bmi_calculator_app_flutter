import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff0a0e21),
        ),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
        scaffoldBackgroundColor: Color(0xff0a0e21),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(),
    );
  }
}
