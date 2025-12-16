import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xFF1A223F),
    brightness: Brightness.dark,
  ),
  useMaterial3: true,

  textTheme: GoogleFonts.montserratTextTheme(),
);
