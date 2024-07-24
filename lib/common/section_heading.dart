import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor,
    required this.showActionButton,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPressed, required this.dateHeading,
  });

  final Color? textColor;
  final bool showActionButton;
  final bool dateHeading;
  final String title, buttonTitle;
  final void Function()? onPressed;
  

  @override
  Widget build(BuildContext context) {
   
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text( 
          title,

          style: dateHeading? Theme.of(context).textTheme.titleSmall: Theme.of(context).textTheme.titleLarge!.apply(
                color: textColor,fontWeightDelta: 2
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: TColors.primary,
                  ),
            ),
          ),
      ],
    );
  }
}
