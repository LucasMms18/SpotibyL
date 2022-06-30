import 'package:flutter/material.dart';

SnackBar customSnackBar(String label) {
  return SnackBar(
    content: Text(
      label,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}
