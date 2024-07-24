
import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/widgets/card_home.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/widgets/home_appbar.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class THomeHeader extends StatelessWidget {
  const THomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
                width: double.infinity,
                height: 240,
                decoration: const BoxDecoration(
                  color: TColors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: TSizes.defaultSpace),
                  child: TAppBarHome(),
                )),
          ],
        ),
      const  Positioned(
          top: 160,
          left: 30,
          right: 30,
          child:  TCardHome(),
        ),
      ],
    );
  }
}
