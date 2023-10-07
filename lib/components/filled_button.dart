import 'package:flutter/material.dart';

class CustomFilledButtom extends StatelessWidget {
  final VoidCallback function;
  final String text;
  const CustomFilledButtom({super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32, left: 16, right: 16),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
                backgroundColor: MaterialStatePropertyAll(ThemeData().primaryColor),
              ),
              onPressed: function,
              child: Text(text, style: const TextStyle(fontSize: 16, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
