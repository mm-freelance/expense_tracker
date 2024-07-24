
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_expense_tracker_techactive/common/t_circular_image.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/transaction_details/trip_details.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';

class TSingleTripHistory extends StatelessWidget {
  const TSingleTripHistory({
    super.key, required this.title, required this.subtitle, required this.trailingtext, required this.image,
  });

final String title,subtitle,trailingtext;
final String image ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () => Get.to(()=> const TripDetailsScreen()),
      child: ListTile(
        leading:  TCircularImage(
          image: image ,
          width: 50,
          height: 50,
          padding: 0,
        ),
        title: Text(title,
            style: Theme.of(context).textTheme.headlineSmall),
        subtitle: Text(subtitle,
            style: Theme.of(context).textTheme.bodyMedium),
        trailing: Text(trailingtext,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.error)),
      ),
    );
  }
}
