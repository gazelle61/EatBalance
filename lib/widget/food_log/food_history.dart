// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eat_balance/widget/food_log/food_history_item.dart';
import 'package:flutter/material.dart';

class FoodHistory extends StatelessWidget {
  const FoodHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        FoodHistoryItem(
          meal: 'Breakfast',
          food: 'Telur orak-arik dan roti gandum',
          calories: '250 kcal',
        ),
        const SizedBox(height: 10),
        FoodHistoryItem(
          meal: 'Lunch',
          food: 'Ayam bakar dan nasi merah',
          calories: '450 kcal',
        ),
        const SizedBox(height: 10),
        FoodHistoryItem(
          meal: 'Dinner',
          food: 'Salad sayur dan dada ayam',
          calories: '300 kcal',
        ),
        const SizedBox(height: 10),
        FoodHistoryItem(
          meal: 'Snack',
          food: 'Buah-buahan segar',
          calories: '100 kcal',
        ),
      ],
    );
  }
}
