// ignore_for_file: prefer_const_constructors

import 'package:eat_balance/controllers/login_controller.dart';
import 'package:eat_balance/widget/mybutton.dart';
import 'package:eat_balance/widget/mytext.dart';
import 'package:eat_balance/widget/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE8DFCA),
        elevation: 0,
        title: Mytext(
            text: 'EatBalance',
            fontSize: 24,
            color: Color(0xFF1A4D2E),
            fontWeight: FontWeight.w600),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFE8DFCA),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Mytextfield(
                  controller: loginController.usernameController,
                  hintText: 'Username',
                  obsecureText: false,
                  backgroundColor: Color(0x4C1A4D2E)),
              SizedBox(height: 16),
              Mytextfield(
                  controller: loginController.passwordController,
                  hintText: 'Password',
                  obsecureText: true,
                  backgroundColor: Color(0x4C1A4D2E)),
              SizedBox(height: 24),
              Mybutton(
                  text: 'Login',
                  onPressed: () {
                    loginController.login();
                  },
                  backgroundColor: Color(0xFF1A4D2E)),
            ],
          ),
        ),
      ),
    );
  }
}
