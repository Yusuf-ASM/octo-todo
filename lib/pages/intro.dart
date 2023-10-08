import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:octo_todo/pages/start_screen.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      imageFlex: 2,
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 18),
    );

    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            image: Image.asset("assets/images/list.png"),
            title: "Manage your tasks",
            body: "You can easily manage all of your daily tasks",
            decoration: pageDecoration,
          ),
          PageViewModel(
            image: Image.asset("assets/images/time_management.png"),
            title: "Create daily routine",
            body: "In Octo you can create your personalized routine to stay productive",
            decoration: pageDecoration,
          ),
          PageViewModel(
            image: Image.asset("assets/images/calendar.png"),
            title: "Orgonaize your tasks",
            body: "You can organize your daily tasks by adding your tasks into separate categories",
            decoration: pageDecoration,
          )
        ],
        showSkipButton: true,
        skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
        next: const Icon(Icons.arrow_forward),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        onSkip: () => Navigator.of(context).push(
          CupertinoPageRoute(builder: (context) => const StartScreenPage()),
        ),
        onDone: () => Navigator.of(context).push(
          CupertinoPageRoute(builder: (context) => const StartScreenPage()),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size(22.0, 10.0),
          color: ThemeData().splashColor,
          activeColor: ThemeData().secondaryHeaderColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
      ),
    );
  }
}
