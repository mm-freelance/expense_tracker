
import 'package:flutter/material.dart';

class TDateAndTotalExpense extends StatelessWidget {
  const TDateAndTotalExpense({
    super.key, required this.amount,
  });

  final String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text('1/7/2024',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall
          // Theme.of(context).textTheme.titleLarge!.apply(
          //       color: textColor,fontWeightDelta: 2
          ),
      Text(amount,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleMedium
          // Theme.of(context).textTheme.titleLarge!.apply(
          //       color: textColor,fontWeightDelta: 2
          ),
    ]);
  }
}
