import 'package:flutter/material.dart';

class StartScreenPage extends StatelessWidget {
  const StartScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 48.0),
                    child: Text(
                      "Welcome to Octo Todo",
                      style: TextStyle(fontSize: 29, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.0, left: 40, right: 40),
                    child: Text(
                      "Please login to your account or create new account to continue",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32, left: 16, right: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ButtonStyle(
                              padding: const MaterialStatePropertyAll(
                                EdgeInsets.all(12),
                              ),
                              backgroundColor: MaterialStatePropertyAll(ThemeData().primaryColor),
                            ),
                            child: const Text(
                              "LOGIN",
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32, left: 16, right: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(EdgeInsets.all(12)),
                            ),
                            child: const Text(
                              "CREATE ACCOUNT",
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
