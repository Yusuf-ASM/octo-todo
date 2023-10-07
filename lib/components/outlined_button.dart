import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback function;
  final String text;
  const CustomOutlinedButton({super.key, required this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32, left: 16, right: 16),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(12)),
              ),
              onPressed: function,
              child: const Text("CREATE ACCOUNT", style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
