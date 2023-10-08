import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octo_todo/components/auth_textfield.dart';
import 'package:octo_todo/components/filled_button.dart';
import 'package:octo_todo/components/snackbar.dart';
import 'package:octo_todo/pages/auth/logic/register.dart';
import 'package:octo_todo/pages/auth/login.dart';

final TextEditingController usernameController = TextEditingController();
final TextEditingController passwordConstroller = TextEditingController();
final TextEditingController confirmPasswordConstroller = TextEditingController();

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                        "Register",
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
                  password: true,
                  labelText: "Password",
                  hintText: "Enter your Password",
                ),
                AuthTextField(
                  controller: confirmPasswordConstroller,
                  password: true,
                  labelText: "Confirm Password",
                  hintText: "Re-enter your Password",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: CustomFilledButtom(
                      text: "Register",
                      function: () {
                        if (confirmPasswordConstroller.text == passwordConstroller.text) {
                          registerButtonLogic(usernameController.text, passwordConstroller.text);
                        } else {
                          snackBar("password not equal", context);
                        }
                      }),
                ),
                // const Row(
                //   children: <Widget>[
                //     Expanded(child: Divider()),
                //     Text("OR"),
                //     Expanded(child: Divider()),
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
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
                          builder: (context) => const LoginPage(),
                        ),
                      ),
                      child: const Text(
                        'Login',
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
