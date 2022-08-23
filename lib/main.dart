import 'package:flutter/material.dart';
import 'package:tltest/colors.dart';
import 'package:tltest/home/ui/home_ui_var.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontFamily: "roboto"),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: color3,
            textStyle: const TextStyle(
              color: color1,
              fontSize: 23,
              fontFamily: "InterUI",
            ),
            shape: const StadiumBorder(),
          ),
        ),
        fontFamily: "roboto",
      ),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeUIVar();
  }
}

// SplashUI
// HomeUIVar
// AddJobUI
// JobListingUI
