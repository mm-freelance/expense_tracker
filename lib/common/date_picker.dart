import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TDatePicker extends StatelessWidget {
  const TDatePicker({
    super.key, required this.lableText,
  });

  final String lableText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: false,
      decoration: InputDecoration(
          labelText: lableText,
          suffixIcon: IconButton(
            onPressed: () {

              showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2025).add( const Duration(days:365)) , initialDate: DateTime.now());
            },
            icon: const  Icon(Iconsax.calendar_add),
          )),
    );
  }
}
