import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octo_todo/components/filled_button.dart';
import 'package:octo_todo/components/outlined_button.dart';
import 'package:octo_todo/pages/auth/login.dart';
import 'package:octo_todo/pages/auth/register.dart';

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
                  CustomFilledButtom(
                    text: "LOGIN",
                    function: () => Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    ),
                  ),
                  CustomOutlinedButton(
                    text: "CREATE ACCOUNT",
                    function: () => Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
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
