// ignore_for_file: prefer_const_constructors

import 'package:eat_balance/bindings/bindings.dart';
import 'package:eat_balance/pages/dashboard_page.dart';
import 'package:eat_balance/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => LoginPage(),
          binding: MyBindings(),
        ),
        GetPage(
            name: '/dashboard',
            page: () => DashboardPage(),
            binding: MyBindings()),
      ],
    );
  }
}
