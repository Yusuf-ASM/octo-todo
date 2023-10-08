import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:octo_todo/pages/home/home.dart';
import 'package:octo_todo/pages/intro.dart';

bool loginState = false;

void main(List<String> args) async {
  await Hive.initFlutter();

  await Hive.openBox("Users").then(
    (value) {
      if (value.get("test") == null) {
        value.put("test", "test");
        value.put("loginState", false);
        loginState = false;
      } else {
        loginState = true;
      }
    },
  );

  await Hive.openBox("Notes").then(
    (value) {
      if (value.get("test") == null) {
        value.put("test", []);
      }
    },
  );

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
      home: loginState ? const HomePage() : const IntroPage(),
    );
  }
}
