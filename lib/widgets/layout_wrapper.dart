import 'package:duition/constants/colors.dart';
import 'package:duition/modules/entry/view/entry_screen.dart';
import 'package:duition/modules/home/view/home_screen.dart';
import 'package:duition/modules/insight/view/insight_screen.dart';
import 'package:duition/modules/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutWrapper extends StatefulWidget {
  const LayoutWrapper({super.key});

  @override
  State<LayoutWrapper> createState() => _LayoutWrapperState();
}

class _LayoutWrapperState extends State<LayoutWrapper> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    var pages = [HomeScreen(), InsightScreen(), ProfileScreen()];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: Colors.transparent,
            leading: CircleAvatar(
              backgroundImage: AssetImage("profile.jpg"),
              radius: 5,
            ),

            titleTextStyle: TextStyle(color: AppColors.white),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Selamat Pagi,", style: TextStyle(fontSize: 14)),
                Text(
                  "Raditya Atalla",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            actions: [
              IconButton.filled(
                onPressed: () {},
                icon: Icon(Icons.notifications),
                color: AppColors.white,
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.primaryOpacity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body: pages[selectedPage],

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/entry");
        },
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.primaryDark,
        shape: CircleBorder(),
        elevation: 4,
        child: Icon(Icons.mic, size: 28),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColors.primaryDark,
        indicatorColor: Colors.transparent,
        labelTextStyle: WidgetStateProperty.resolveWith((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(color: AppColors.primary);
          }
          return const TextStyle(color: AppColors.primaryLight);
        }),
        selectedIndex: selectedPage,
        onDestinationSelected: (value) {
          setState(() {
            selectedPage = value;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home, color: AppColors.primaryLight),
            label: "Home",
            selectedIcon: Icon(Icons.home, color: AppColors.primary),
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart, color: AppColors.primaryLight),
            label: "Insight",
            selectedIcon: Icon(Icons.bar_chart, color: AppColors.primary),
          ),
          NavigationDestination(
            icon: Icon(Icons.person, color: AppColors.primaryLight),
            label: "Profile",
            selectedIcon: Icon(Icons.person, color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
