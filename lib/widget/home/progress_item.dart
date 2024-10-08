// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData iconData;
  final RxDouble value;
  final Function(double) onChanged;
  final Color color;

  const ProgressItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconData,
    required this.value,
    required this.onChanged,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Colors.white)),
          SizedBox(height: 8),
          Text('${value.toStringAsFixed(1)}',
              style: TextStyle(color: Colors.white)),
          Slider(
            value: value.value,
            min: 0,
            max: 100,
            onChanged: onChanged,
          )
        ],
      ),
    );
  }
}
