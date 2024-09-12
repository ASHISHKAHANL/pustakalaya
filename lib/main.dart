import 'package:books_arena/pages/book_list.dart';
import 'package:books_arena/pages/launch_page.dart';
import 'package:books_arena/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3D5A80), // Aesthetic primary color
        // accentColor: Color(0xFF98C1D9), // Soft accent color
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFF98C1D9), // Replaces accentColor
        ),
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          // bodyText1: TextStyle(color: Color(0xFF293241)),
          // bodyText2: TextStyle(color: Color(0xFF3D5A80)),
          // button: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Color(0xFF293241)), // Replaces bodyText1
          bodyMedium: TextStyle(color: Color(0xFF3D5A80)), // Replaces bodyText2
          labelLarge: TextStyle(color: Colors.white), // Replaces button
        ),
      ),
      home: LoginPage(),
    );
  }
}
