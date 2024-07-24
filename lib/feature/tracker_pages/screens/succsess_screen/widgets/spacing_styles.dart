import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';


// used in login -- padding for body after appBar ( left:24 , right:24 , top:56 -- because we didnt assign appbar here, so it take that space , bottom:24)
class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
      top: TSizes.appBarHeight,
      left: TSizes.defaultSpace,
      right: TSizes.defaultSpace,
      bottom: TSizes.defaultSpace);
}
