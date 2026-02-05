import 'package:duition/constants/colors.dart';
import 'package:duition/modules/entry/view/entry_screen.dart';
import 'package:duition/widgets/layout_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryDark,
        textTheme: GoogleFonts.manropeTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: AppColors.white
          ),
        )
      ),

      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const LayoutWrapper()),
        GetPage(name: "/entry", page: () => const EntryScreen())
      ],
    );
  }
}
