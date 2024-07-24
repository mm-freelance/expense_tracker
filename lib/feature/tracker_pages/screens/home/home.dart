import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_expense_tracker_techactive/common/section_heading.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/widgets/home_header.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/widgets/single_trip_tile.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/view_all_transaction.dart/view_all_screen.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 340, 
            child: THomeHeader(),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          // section heading
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
            child: TSectionHeading(
              showActionButton: true,
              title: 'Trips History',
              onPressed: () => Get.to(() => const ViewAllTripHistory()), dateHeading: false,
            ),
          ),

          // tile body

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: TSizes.md / 3),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TSingleTripHistory(
                    title: 'Trip Tile 1',
                    subtitle: '1 July - 3 July, 2024',
                    trailingtext: '₹850.00',
                    image: 'assets/image_14.png',
                  ),
                  TSingleTripHistory(
                      title: 'Trip Title 2',
                      subtitle: '1/6/2024 - 4/6/2024',
                      trailingtext: '₹850.00',
                      image: 'assets/image_14.png'),
                  TSingleTripHistory(
                      title: 'Trip Title 3',
                      subtitle: '1/6/2024 - 4/6/2024',
                      trailingtext: '₹850.00',
                      image: 'assets/image_14.png'),
                  TSingleTripHistory(
                      title: 'Trip Title 4',
                      subtitle: '1/6/2024 - 4/6/2024',
                      trailingtext: '₹850.00',
                      image: 'assets/image_14.png'),
                  TSingleTripHistory(
                      title: 'Trip Title 5',
                      subtitle: '1/6/2024 - 4/6/2024',
                      trailingtext: '₹850.00',
                      image: 'assets/image_14.png'),
                ]),
          )
        ],
      ),
    ));
  }
}
