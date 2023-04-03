import 'package:flutter/material.dart';

import 'otp_screen.dart';

void main() => runApp(OTP_Verify());

class OTP_Verify extends StatelessWidget {
  const OTP_Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OTP(),
    );
  }
}
