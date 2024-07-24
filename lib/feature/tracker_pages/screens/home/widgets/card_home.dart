
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/widgets/card_content.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/statistic_screen/statistic_screen.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TCardHome extends StatelessWidget {
  const TCardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Get.to(()=> const  StatisticScreen()),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: TSizes.defaultSpace / 2, horizontal: TSizes.defaultSpace),
        height: 180,
        width: 320,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 16, 48, 206),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(47, 82, 178, 0.573),
              offset: Offset(0, 3),
              blurRadius: 12,
              spreadRadius: 2,
            ),
          ],
        ),
        child: const TCardContent(),
      ),
    );
  }
}
