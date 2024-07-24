import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_expense_tracker_techactive/common/appbar.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/add_trip/add_trip.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';

class TAppBarHome extends StatelessWidget {
  const TAppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Created appBar for home

    return TCustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Branch ID: 234A',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            'Enjelin Morgeana',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () => Get.to(() => const AddTripScreen()),
          icon: const Icon(
            Iconsax.add_circle,
            color: TColors.white, size: 28,
          ),
        ),
        //  IconButton(
        //   onPressed: () => Get.to(() => const StatisticScreen()),
        //   icon: const Icon(
        //     Iconsax.chart,
        //     color: TColors.white, size: 28,
        //   ),
        // ),
        //  
      ],
      blueBackground: true,
    );
  }
}
