import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter OTP',
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid otp';
                    } else if (value.length != 10) {
                      return 'OTP should be 6 digits long';
                    } else {
                      return null;
                    }
                  },
                )
              ],
            ),

            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
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
