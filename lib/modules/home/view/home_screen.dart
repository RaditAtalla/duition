import 'package:duition/constants/colors.dart';
import 'package:duition/widgets/history_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30),

            // Circle diagram
            Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: CircularProgressIndicator(
                      value: 60.0 / 100.0,
                      backgroundColor: AppColors.primaryOpacity,
                      color: AppColors.primary,
                      strokeWidth: 12,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Left for Today",
                      style: TextStyle(
                        color: AppColors.primaryLight,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Rp123k",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryOpacity,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        "On Track",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 30),

            // Daily budget line
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Daily Budget",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.primaryLight,
                        ),
                      ),
                      Text(
                        "Rp223.000",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.primaryLight,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(10),
                    value: 60.0 / 100.0,
                    backgroundColor: AppColors.primaryOpacity,
                    color: AppColors.primary,
                    minHeight: 6,
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Monthly saved and upcoming bills
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                      color: AppColors.primaryOpacity,
                      borderRadius: BorderRadius.circular(15),
                      // border: BoxBorder.all(color: AppColors.primaryLight),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("MONTHLY SAVED", style: TextStyle(fontSize: 12)),
                        Text(
                          "Rp125.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.trending_up,
                              color: AppColors.primary,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "12%",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                      color: AppColors.primaryOpacity,
                      borderRadius: BorderRadius.circular(15),
                      // border: BoxBorder.all(color: AppColors.primaryLight),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("UPCOMING BILLS", style: TextStyle(fontSize: 12)),
                        Text(
                          "Rp20.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.alarm,
                              color: AppColors.orange,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "3 Days Left",
                              style: TextStyle(
                                color: AppColors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Recent activity
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Aktifitas Terakhir",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            HistoryCard(
              item: "Batagor",
              price: 10000,
              date: DateTime(2025, 2, 15, 0, 10, 0),
              category: "Jajan",
              type: "expense",
            ),
            SizedBox(height: 30),
            HistoryCard(
              item: "Mentoring",
              price: 75000,
              date: DateTime(2025, 2, 15, 0, 10, 0),
              category: "Kerja",
              type: "income",
            ),
            SizedBox(height: 30),
            HistoryCard(
              item: "Burger",
              price: 15000,
              date: DateTime(2025, 2, 15, 0, 10, 0),
              category: "Jajan",
              type: "expense",
            ),
          ],
        ),
      ),
    );
  }
}
