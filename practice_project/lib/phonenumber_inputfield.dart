import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumberInput extends StatelessWidget {
  final TextEditingController controller;

  const PhoneNumberInput({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
        // add any other input formatters you need
      ],
      decoration: InputDecoration(
        hintText: 'Enter phone number',
        prefixIcon: Icon(Icons.phone),
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Phone number is required';
        }
        if (value.length < 10) {
          return 'Phone number must be at least 10 digits long';
        }
        // add any other validation rules you need
        return null;
      },
    );
  }
}
