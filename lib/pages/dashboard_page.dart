// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eat_balance/controllers/dashboard_controller.dart';
import 'package:eat_balance/pages/menu/food_log.dart';
import 'package:eat_balance/pages/menu/home.dart';
import 'package:eat_balance/pages/menu/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController = Get.find();

    final List<Widget> menus = [Home(), FoodLog(), Profile()];

    return Obx(() {
      return Scaffold(
        backgroundColor: Color(0xFFF5EFE6),
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: dashboardController.selectedIndex.value,
            onTap: dashboardController.changeMenu,
            selectedItemColor: Color(0xFF1A4D2E),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.food_bank_outlined),
                label: "Food",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.graphic_eq_rounded),
                  label: "Daily Progress"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: "Profile"),
            ]),
      );
    });
  }
}
