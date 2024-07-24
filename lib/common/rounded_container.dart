import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.width ,
    this.height ,
    this.radius = TSizes.cardRadiusLg,
    this.padding ,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
    
    this.showBorder = false,
    this.borderColor = TColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final double? radius;
  final EdgeInsetsGeometry? padding;
  final bool showBorder;
  final Color borderColor;


  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
