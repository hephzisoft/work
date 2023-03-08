import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   late final TextEditingController _controller1;
   late final TextEditingController _controller2;
  @override
  void initState() {
    _controller1 = TextEditingController();
    _controller2 = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Login", style: GoogleFonts.poppinsTextTheme().bodyLarge)

        ],
      ),
    );
  }
}
