import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/device_utility.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

//  for like shopping app / swiggy app appBar

class TCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TCustomAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed, required this.blueBackground, 
     // required this.themebackgroundColor
      });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final bool blueBackground;
  //final Color themebackgroundColor;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
      child: AppBar(

        backgroundColor:  TColors.primary,
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
                  onPressed:()=> Get.back(),
                  icon: Icon(Iconsax.arrow_left,
                      color:blueBackground? TColors.white:  TColors.dark),
                )
              : leadingIcon != null
                  ? IconButton(
                      onPressed: () => leadingOnPressed,
                      icon: Icon(leadingIcon))
                  : null,
          title: title,
          actions: actions),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
