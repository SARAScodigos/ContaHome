import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const ContaHomeApp());
}

class ContaHomeApp extends StatelessWidget {
  const ContaHomeApp({super.key});

  @override
  Widget build(BuildContext contextinfo) {
    return MaterialApp(
      title: 'Contabilidad desde cero',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:
            const Color.fromARGB(255, 247, 242, 235), // Fondo general
        primaryColor: const Color.fromARGB(
            255, 13, 28, 53), // AppBar y listas principales
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 13, 28, 53),
          background: const Color.fromARGB(255, 247, 242, 235),
          primary: const Color.fromARGB(255, 13, 28, 53),
          secondary: const Color.fromARGB(255, 74, 0, 255), // Botones
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 13, 28, 53),
          foregroundColor: Color.fromARGB(255, 247, 242, 235),
          elevation: 0,
        ),
        cardTheme: const CardThemeData(
          color:
              Color.fromARGB(255, 247, 242, 235), // Fondo de las cards/listas
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 74, 0, 255), // Botones
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
