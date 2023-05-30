import 'package:flutter/material.dart';

const Color _customColor = Color(0xff002b79);

class SalleCbbaTheme {

  static ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        primary: _customColor,
        secondary: Colors.white)
    );
  }
}