// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:eat_balance/widget/food_log/nutrient_item.dart';
import 'package:flutter/material.dart';

class NutritionSummary2 extends StatelessWidget {
  const NutritionSummary2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0x7FE8DFCA),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFFCCD2A),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NutrientItem(title: 'Calories', value: '1200 kcal'),
          NutrientItem(title: 'Protein', value: '40 g'),
          NutrientItem(title: 'Fat', value: '20 g'),
          NutrientItem(title: 'Carb', value: '150 g'),
        ],
      ),
    );
  }
}
