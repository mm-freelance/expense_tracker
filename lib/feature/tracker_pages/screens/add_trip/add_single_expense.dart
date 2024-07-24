import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_expense_tracker_techactive/common/date_picker.dart';
import 'package:new_expense_tracker_techactive/common/drop_down_button.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/add_trip/widgets/add_invoice.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/add_trip/add_trip.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class AddSingleExpenseScreen extends StatelessWidget {
  const AddSingleExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Get.to(() => const AddTripScreen()),
          child: const Icon(
            CupertinoIcons.arrow_left,
            color: TColors.white,
          ),
        ),
        backgroundColor: TColors.primary,
        title: Text(
          'Add Expense',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                // TextFormField(
                //   expands: false,
                //   decoration: const InputDecoration(
                //     labelText: 'Date',
                //     prefixIcon: Icon(Iconsax.calendar_add),
                //   ),
                // ),
                const TDatePicker(lableText: 'Select Date'), 
                const SizedBox(height: TSizes.spaceBtwInputFields / 2),
                //  TextFormField(
                //   expands: false,
                //   decoration: const InputDecoration(
                //     labelText: 'Expense',
                //     suffixIcon: Icon(CupertinoIcons.chevron_down),
                //   ),
                // ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                const TDropDownButtonFormField(
                  items: [
                    'Food',
                    'Transportation',
                    'Accommodation',
                    'Miscellaneous'
                  ],
                  lableTitle: 'Expense',
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: 'Amount',
                    prefixIcon: Icon(Iconsax.money_4),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),
                TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: 'Remarks',
                    prefixIcon: Icon(Iconsax.message),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields*2),

                const TDottedBorderContainer(),
                const SizedBox(height: TSizes.spaceBtwSections),

                // signup button

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const AddTripScreen()),
                    child: const Text('Save Expense'),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
