import 'package:duition/constants/colors.dart';
import 'package:flutter/material.dart';

class DailyBudgetBottomModal extends StatelessWidget {
  const DailyBudgetBottomModal({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return Container(
      height: 300,
      padding: const EdgeInsets.all(20),
      color: AppColors.primaryDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Edit Daily Budget",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 10),
          TextField(
            controller: _controller,
            cursorColor: AppColors.primary,
            decoration: InputDecoration(
              hintText: "Ex: 200000",
              hintStyle: TextStyle(color: AppColors.primaryLight),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.primary),
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                foregroundColor: AppColors.primaryDark,
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Save",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
