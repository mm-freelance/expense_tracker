
import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TCardContent extends StatelessWidget {
  const TCardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Column(
        children: [
          Text(
            'Monthly Expense',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .apply(color: TColors.lightGrey),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2.5),
          Text(
            '\$ 2,548.00',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .apply(color: TColors.white),
          ),
        ],
      ),
     // const SizedBox(height: TSizes.spaceBtwItems),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Column(
        children: [
          Text(
            'Trip Count',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: TColors.lightGrey),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2.5),
          Text(
            '1',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(color: TColors.white),
          ),
        ],
      ),
       Column(
        children: [
          Text(
            'Today Expense',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: TColors.lightGrey),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2.5),
          Text(
            '\$ 248.00',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(color: TColors.white),
          ),
        ],
      )
        ],
      ),
    ]);
  }
}


