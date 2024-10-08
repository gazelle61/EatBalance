// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eat_balance/widget/food_log/food_history.dart';
import 'package:eat_balance/widget/food_log/nutrition_summary.dart';
import 'package:eat_balance/widget/mytext.dart';
import 'package:flutter/material.dart';

class FoodLog extends StatelessWidget {
  const FoodLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A4D2E),
        elevation: 0,
        title: Mytext(
            text: 'Food Log',
            fontSize: 24,
            color: Color(0xFFFCCD2A),
            fontWeight: FontWeight.w600),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF4F6F52),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NutritionSummary2(),
            SizedBox(height: 20),
            Mytext(
                text: 'Food of the Day',
                fontSize: 18,
                color: Color(0xFFFFFBE6),
                fontWeight: FontWeight.bold),
            Expanded(
              child: FoodHistory(),
            ),
          ],
        ),
      ),
    );
  }
}
