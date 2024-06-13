import 'package:flutter/material.dart';

// Tema a partir de un color hex
const Color _customColor = Color(0xFFA566AF);

// Lista de temas predefinidos
const List<Color> _colorThemes = [
  _customColor, 
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }) : assert (
    selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
    'El color se debe encontrar entre 0 y ${_colorThemes.length - 1}'
  );

  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorThemes[2]);
  }
}
