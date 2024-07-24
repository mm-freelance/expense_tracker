import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TDropDownButtonFormField extends StatelessWidget {
  const TDropDownButtonFormField({
    super.key,
    required this.items, required this.lableTitle,
  });

  final List items;
  final String lableTitle;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      onChanged: (value) {},
      //  decoration:const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
      decoration:  InputDecoration(labelText: lableTitle),
      items: items
          .map((option) => DropdownMenuItem(
              value: option,
              child: Container(
                  constraints: const BoxConstraints(minHeight: 48),
                  child: Text(
                    option,
                    style: const TextStyle().copyWith(
                        fontSize: TSizes.fontSizeSm, color: TColors.black),
                  ))))
          .toList(),
    );
  }
}
