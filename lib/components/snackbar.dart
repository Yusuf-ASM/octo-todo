import 'package:flutter/material.dart';

dynamic snackBar(String message, BuildContext context, {int duration = 2000}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(milliseconds: duration),
      content: Text(message),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
