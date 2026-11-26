import 'package:flutter/material.dart';

class AppColors {
  // Purane naam wohi hain taake baqi files na badalni paren
  static const Color yellow = Color(0xFFF48FB1); // soft pink
  static const Color orange = Color(0xFF8E24AA); // purple
  static const Color cream = Color(0xFFFCE4EC);
  static const Color dark = Color(0xFF4A148C);

  // Header, splash, login ke upar wala hissa: hot pink se deep purple
  static const LinearGradient gradient = LinearGradient(
    colors: [Color(0xFFEC407A), Color(0xFF6A1B9A)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Poori app ke peeche ka halka background
  static const LinearGradient bgGradient = LinearGradient(
    colors: [Color(0xFFFFF0F6), Color(0xFFF3E5F5), Color(0xFFE8EAF6)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}