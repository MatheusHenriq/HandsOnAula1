import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  const MyTextFormField({
    Key? key,
    @required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hoverColor: Colors.red,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(64),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(64),
            borderSide: BorderSide(color: Colors.orange),
          ),
        ),
      ),
    );
  }
}
