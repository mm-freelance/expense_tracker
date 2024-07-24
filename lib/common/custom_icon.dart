import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
class TCustomIcon extends StatelessWidget {
  const TCustomIcon({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.color,
  });

  final Icon icon;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
   
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
