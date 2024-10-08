// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double fontSize;
  final bool obsecureText;
  final Color backgroundColor;

  const Mytextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      this.fontSize = 16,
      required this.obsecureText,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        style: TextStyle(
          fontSize: fontSize,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFFFFFBE6)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        ),
      ),
    );
  }
}
