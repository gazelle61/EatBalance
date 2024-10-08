import 'package:eat_balance/widget/mytext.dart';
import 'package:flutter/material.dart';

class CaloriesBox extends StatelessWidget {
  const CaloriesBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      constraints: BoxConstraints(
        maxHeight: 100,
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF4F6F52),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: CircularProgressIndicator(
                  value: 0.7,
                  backgroundColor: Color(0xFFFFFBE6),
                  color: Colors.black87,
                ),
              ),
              SizedBox(width: 10),
              Flexible(
                child: Mytext(
                  text: '1200/2000 kcal',
                  fontSize: 16,
                  color: Color(0xFFFCCD2A),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.warning, color: Colors.red, size: 20),
              SizedBox(width: 5),
              Mytext(
                text: 'you haven\'t reached your target',
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
