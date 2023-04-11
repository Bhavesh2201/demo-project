import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'otp_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login_screen': (context) => Login(),
        'otp_screen': (context) => OTP(),
      },
      home: Login(),    
    );
  }
}
