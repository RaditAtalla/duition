import 'package:duition/constants/colors.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  final String item;
  final DateTime date;
  final int price;
  final String category;
  final String type;

  const HistoryCard({
    super.key,
    required this.item,
    required this.date,
    required this.price,
    required this.category,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: AppColors.orangeOpacity,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.coffee, color: AppColors.orange),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text("Today, 09:41", style: TextStyle(fontSize: 12, color: AppColors.primaryLight)),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "${type == "expense" ? "-" : "+"}Rp${price.toString()}",
              style: TextStyle(
                color: type == "expense" ? AppColors.red : AppColors.primary,
                fontSize: 14,
              ),
            ),
            Text(category, style: TextStyle(fontSize: 12, color: AppColors.primaryLight)),
          ],
        ),
      ],
    );
  }
}
