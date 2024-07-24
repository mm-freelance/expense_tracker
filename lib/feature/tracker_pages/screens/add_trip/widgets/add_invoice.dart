
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TDottedBorderContainer extends StatelessWidget {
  const TDottedBorderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        color: TColors.darkGrey,
        dashPattern: const [5, 5],
        radius: const Radius.circular(20),
        //padding: const  EdgeInsets.all(TSizes.lg),
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.lg / 1.5,
            horizontal: TSizes.defaultSpace * 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Iconsax.add_circle5,
              color: TColors.darkGrey,
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 1.5),
            Text('Add Invoice',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .apply(color: TColors.darkerGrey))
          ],
        ),);
  }
}
