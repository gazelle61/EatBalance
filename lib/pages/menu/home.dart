// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eat_balance/widget/home/calories_box.dart';
import 'package:eat_balance/widget/home/progress_grid.dart';
import 'package:eat_balance/widget/mytext.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A4D2E),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A4D2E),
        elevation: 0,
        title: Mytext(
            text: 'EatBalance',
            fontSize: 24,
            color: Color(0xFFFCCD2A),
            fontWeight: FontWeight.w600),
            centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Color(0xFFE8DFCA)),
            onPressed: () {
              // Aksi notifikasi
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Mytext(
                text: 'Today',
                fontSize: 24,
                color: Color(0xFFE8DFCA),
                fontWeight: FontWeight.w600),
            SizedBox(height: 10),
            CaloriesBox(),
            SizedBox(height: 20),
            ProgressGrid(),
          ],
        ),
      ),
    );
  }
}
