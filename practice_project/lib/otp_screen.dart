import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTP extends StatelessWidget {
  OTP({super.key});
  final textOneCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          children: <Widget>[
            // Image.asset(
            //   'assets/images/OTP.png',
            //   height: 200,
            // ),
            SizedBox(height: 250),
            Text(
              'Let\'s get started OTP verification',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                OTPTextField(
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 50,
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                  inputFormatter: <TextInputFormatter>[
                    LengthLimitingTextInputFormatter(
                        6), // Set maximum length to 6
                    FilteringTextInputFormatter.digitsOnly, // Allow only digits
                  ],
                )
              ],
            ),

            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print('successfully login.');
                },
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)))),
                child: Padding(
                  padding: EdgeInsets.all(14),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 22),
          ],
        ),
      )),
    );
  }
}
