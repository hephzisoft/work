import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:to_do/Auth/auth_service.dart';
import 'package:to_do/screen/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  const MaterialColor primarySwatch = MaterialColor(
    0xFF111C2F,
    <int, Color>{
      50: Color(0xFFE5EAF0),
      100: Color(0xFFBFC8D8),
      200: Color(0xFF95A3BD),
      300: Color(0xFF6A7F9E),
      400: Color(0xFF495F87),
      500: Color(0xFF111C2F),
      600: Color(0xFF2B2F42),
      700: Color(0xFF222739),
      800: Color(0xFF1A1E2D),
      900: Color(0xFF111924),
    },
  );
  runApp(
     MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: primarySwatch,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: AuthService().handleAuthState(),
    ),
  );
}

