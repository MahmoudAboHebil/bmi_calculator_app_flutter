import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/input_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        // '/resultsPage': (context) => ResultsPage()
      },
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
    );
  }
}
