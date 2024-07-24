import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/add_trip/add_trip.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/home.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/widgets/single_trip_tile.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class ViewAllTripHistory extends StatelessWidget {
  const ViewAllTripHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'All Trips',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          ),
          actions: [
            IconButton(
              onPressed: () => Get.to(() => const AddTripScreen()),
              icon: const Icon(
                Iconsax.add_circle,
                color: TColors.white,
                size: 28,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(TSizes.md / 2),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 6,
            ),
            itemCount: 20,
            itemBuilder: (context, index) => const TSingleTripHistory(
                title: 'Trip Title 3',
                subtitle: '1/6/2024 - 4/6/2024',
                trailingtext: '₹850.00',
                image: 'assets/image_14.png'),
          ),
        ));
  }
}

class TSingleTransactionHistory {
  const TSingleTransactionHistory();
}
