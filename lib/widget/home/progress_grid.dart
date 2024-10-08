// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:eat_balance/controllers/progress_controller.dart';
import 'package:eat_balance/widget/home/progress_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressGrid extends StatelessWidget {
  final ProgressController controller = Get.put(ProgressController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          ProgressItem(
            title: 'Steps',
            subTitle: '0 km/ 100 km',
            iconData: Icons.directions_walk,
            value: controller.steps,
            onChanged: (val) => controller.updateSteps(val),
            color: Color(0xFF4F6F52),
          ),
          ProgressItem(
            title: 'Water',
            subTitle: '0 ML / 1.500 ML',
            iconData: Icons.local_drink,
            value: controller.water,
            onChanged: (val) => controller.updateWater(val),
            color: Color(0xFF4F6F52),
          ),
          ProgressItem(
            title: 'Protein',
            subTitle: '0%',
            iconData: Icons.egg,
            value: controller.protein,
            onChanged: (val) => controller.updateProtein(val),
            color: Color(0xFF4F6F52),
          ),
          ProgressItem(
            title: 'Carbo',
            subTitle: '0%',
            iconData: Icons.rice_bowl,
            value: controller.carbo,
            onChanged: (val) => controller.updateCarbo(val),
            color: Color(0xFF4F6F52),
          ),
          ProgressItem(
            title: 'Lemak',
            subTitle: '0%',
            iconData: Icons.fastfood,
            value: controller.fat,
            onChanged: (val) => controller.updateFat(val),
            color: Color(0xFF4F6F52),
          ),
        ],
      ),
    );
  }
}
