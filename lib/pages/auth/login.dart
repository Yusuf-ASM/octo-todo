import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octo_todo/components/auth_textfield.dart';
import 'package:octo_todo/components/filled_button.dart';
import 'package:octo_todo/pages/auth/register.dart';

final TextEditingController usernameController = TextEditingController();
final TextEditingController passwordConstroller = TextEditingController();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 56),
                  child: Row(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                AuthTextField(
                  controller: usernameController,
                  password: false,
                  labelText: "Username",
                  hintText: "Enter your Username",
                ),
                AuthTextField(
                  controller: passwordConstroller,
                  password: false,
                  labelText: "Password",
                  hintText: "Enter your Password",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 58),
                  child: CustomFilledButtom(text: "Login", function: () {}),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () => Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
