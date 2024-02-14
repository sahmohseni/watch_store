import 'package:flutter/material.dart';
import 'package:watch_store/component/theme.dart';
import 'package:watch_store/screens/auth/get_otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightAppTheme(),
      home: VerifyOtpScreen(),
    );
  }
}
