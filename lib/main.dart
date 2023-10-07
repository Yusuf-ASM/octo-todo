import 'package:flutter/material.dart';
import 'package:octo_todo/pages/intro.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        fontFamily: 'SFProText',
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: const Color(0x0090caf9),
      ),
      darkTheme: ThemeData(
        fontFamily: 'SFProText',
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0x0090caf9),
      ),
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
    );
  }
}
