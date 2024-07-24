import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   // final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          height: 60,
          image: AssetImage('assets/logo.png'),
        ),
        const SizedBox(
          height: TSizes.md,
        ),
        Text(
           "Welcome back,",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        Text(
          "Discover Limitless Choices and Unmatched Convenience.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
