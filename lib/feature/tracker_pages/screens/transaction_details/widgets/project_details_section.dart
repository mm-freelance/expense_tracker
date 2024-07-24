import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TTransactionDetailsSection extends StatelessWidget {
  const TTransactionDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SubTotal

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Status', style: Theme.of(context).textTheme.titleSmall),
            Text('Expense',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .apply(color: TColors.error, )),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        // Shipping Fee

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('To', style: Theme.of(context).textTheme.titleSmall),
            Text('Clare Jovalski',
                style: Theme.of(context).textTheme.titleMedium!
                  ..apply(color: TColors.dark)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        // Tax Fee

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Time', style: Theme.of(context).textTheme.titleSmall),
            Text('04:30 PM',
                style: Theme.of(context).textTheme.titleMedium!
                  ..apply(color: TColors.dark)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Date', style: Theme.of(context).textTheme.titleSmall),
            Text('Feb 29,2022',
                style: Theme.of(context).textTheme.titleMedium!
                  ..apply(color: TColors.dark)),
          ],
        ),
       const  SizedBox(height: TSizes.spaceBtwItems),
        // Divider
        const Divider(),
        const SizedBox(height: TSizes.spaceBtwItems),

        //  Price

         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Spending', style: Theme.of(context).textTheme.titleSmall),
            Text('\$85.00',
                style: Theme.of(context).textTheme.titleMedium!
                  ..apply(color: TColors.dark)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Fee', style: Theme.of(context).textTheme.titleSmall),
            Text('- \$0.99',
                style: Theme.of(context).textTheme.titleMedium!
                  ..apply(color: TColors.dark)),
          ],
        ),
       
        const  SizedBox(height: TSizes.spaceBtwItems),
        // Divider
        const Divider(),
        const SizedBox(height: TSizes.spaceBtwItems),

        //  Price

         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total', style: Theme.of(context).textTheme.headlineSmall),
            Text('\$84.01',
                style: Theme.of(context).textTheme.headlineSmall!
                  ..apply(color: TColors.dark)),
          ],
        ),
      ],
    );
  }
}
