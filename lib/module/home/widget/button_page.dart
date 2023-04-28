import 'package:flutter/material.dart';

ElevatedButton buttonPage(VoidCallback button, String title, Color color) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
    ),
    onPressed: button,
    child: Text(title),
  );
}
