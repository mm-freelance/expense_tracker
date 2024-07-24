import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/splash_screen/splash_screen.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/elevated_button_theme.dart';
import 'package:new_expense_tracker_techactive/utils/outlined_button_theme.dart';
import 'package:new_expense_tracker_techactive/utils/text_field_theme.dart';
import 'package:new_expense_tracker_techactive/utils/text_theme.dart';

void main() {
  runApp(const ExpenceTracker());
}

class ExpenceTracker extends StatelessWidget {
  const ExpenceTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ExpenceTracker',
      theme: ThemeData(
        fontFamily: 'Inter',
        brightness: Brightness.light,
        primaryColor: TColors.primary,
        textTheme: TTextTheme.lightTextTheme,
        scaffoldBackgroundColor: TColors.white,
        elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
        outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
        inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      ),
      home: const SplashScreen(),
    );
  }
}
