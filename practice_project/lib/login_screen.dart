import 'package:flutter/material.dart';

import 'phonenumber_inputfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App demo')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Container(
              width: 350,
              height: 50,
              child: PhoneNumberInput(controller: _phoneController),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // set the background color
                ),
                onPressed: () {},
                child: Text('Login'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
