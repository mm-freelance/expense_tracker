import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/home.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Get.to(() => const HomeScreen()),
            child: const Icon(
              CupertinoIcons.arrow_left,
              color: TColors.white,
            ),
          ),
          backgroundColor: TColors.primary,
          title: Text(
            'Statistics',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          ),)

    );
  }
}