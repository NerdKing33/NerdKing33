import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:housing_information_website/impVariable.dart';
import 'package:housing_information_website/pages/homePage.dart';
import 'package:housing_information_website/themes/theme.dart';

void main() {
  runApp(
      const MyApp()
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  List< Widget > pages = [
    const homePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleCptl,
      routes: {
        '/homePage' : (context) => const homePage(),
        '/searchPage' : (context) => const homePage(),
      },
      theme: lightMode,
      darkTheme: darkMode,
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
