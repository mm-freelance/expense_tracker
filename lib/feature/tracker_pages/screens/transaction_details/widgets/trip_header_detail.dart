
import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/common/t_circular_image.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TTripDetailHeaderDetails extends StatelessWidget {
  const TTripDetailHeaderDetails({
    super.key, required this.totalExpense,
  });

  final String totalExpense;

  @override
  Widget build(BuildContext context) {
    return Column(
         children: [
           const TCircularImage(
             image: 'assets/image_14.png',
             width: 70,
             height: 70,
             padding: 0,
           ),
           const SizedBox(height: TSizes.spaceBtwItems),
           Container(
               padding: const EdgeInsets.symmetric(horizontal: TSizes.sm*2, vertical: TSizes.sm),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(50),
                 color: TColors.primary.withOpacity(0.2),
               ),
               child: Text(
                 '1/7/2024 - 3/7/2024',
                 style: Theme.of(context)
                     .textTheme
                     .bodyLarge
               )),
           const SizedBox(height: TSizes.spaceBtwItems),
           Center(
             child: Text(
                totalExpense,
               style: Theme.of(context).textTheme.headlineLarge!
                     .apply(color: Colors.green,)
             ),
           )
         ],
       );
  }
}

class TSingleTransactionHistory {
  const TSingleTransactionHistory();
}

