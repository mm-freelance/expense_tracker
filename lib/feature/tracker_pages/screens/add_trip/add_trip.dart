import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_expense_tracker_techactive/common/date_picker.dart';
import 'package:new_expense_tracker_techactive/common/drop_down_button.dart';
import 'package:new_expense_tracker_techactive/common/section_heading.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/add_trip/add_single_expense.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/add_trip/widgets/single_expense.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/home.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/succsess_screen/success_screen.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class AddTripScreen extends StatelessWidget {
  const AddTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(() => const AddSingleExpenseScreen()),
        child: const Icon(
          Iconsax.add,
          color: TColors.white,
        ),
      ),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Get.to(() => const HomeScreen()),
          child: const Icon(
            CupertinoIcons.arrow_left,
            color: TColors.white,
          ),
        ),
        backgroundColor: TColors.primary,
        title: Text(
          'Add Trip',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white),
        ),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TDropDownButtonFormField(items: [
                'Sample Project 1',
                'Sample Project 2',
                'Sample Project 3',
                'Sample Project 4',
                'Sample Project 5',
                'Sample Project 6'
              ], lableTitle: 'Project'),
              const SizedBox(height: TSizes.spaceBtwInputFields),
            const   Row(
                children: [
                  Expanded(
                    child: TDatePicker(lableText: 'From Date'), 
                  ),
                  SizedBox(width: TSizes.spaceBtwInputFields),
                  Expanded(
                    child: TDatePicker(lableText: 'To Date'), 
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              const TSectionHeading(
                  showActionButton: false,
                  title: '1/6/2024',
                  dateHeading: true),
              const SizedBox(height: TSizes.sm),

              const TSingleExpense(
                title: 'Food - ',
                details: 'I ate 2 idly',
                amount: '₹345.00',
                approvedInvoice: true,
                approvedStatus: 'Approved',
                isApproved: true,
              ),
              //  const SizedBox(height: TSizes.md/2),
              const TSingleExpense(
                title: 'Food - ',
                details: 'I ate 2 idly',
                amount: '₹345.00',
                approvedInvoice: false,
                approvedStatus: 'Disapproved',
                isApproved: false,
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              const TSectionHeading(
                  showActionButton: false,
                  title: '2/6/2024',
                  dateHeading: true),
              const SizedBox(height: TSizes.sm),

              const TSingleExpense(
                title: 'Food - ',
                details: 'I ate 2 idly',
                amount: '₹345.00',
                approvedInvoice: true,
                approvedStatus: 'Approved',
                isApproved: true,
              ),
              //  const SizedBox(height: TSizes.md/2),
            const   TSingleExpense(
                title: 'Food - ',
                details: 'I ate 2 idly',
                amount: '₹345.00',
                approvedInvoice: true,
                approvedStatus: 'Approved',
                isApproved: true,
              ),
               // signup button

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(image: 'assets/logo.png', title: 'Successfully Send', subTitle: 'The Trip invoices you sent to get approval is successfully send to the admin. Please wait for the confirmation.', onPressed: () => Get.to(()=>const  HomeScreen()),)),
                    child:const   Text('Get Approval'),
                  ),
                ),
             const  SizedBox(height: TSizes.spaceBtwSections),

            ],
          ),
        ),
      ),
    );
  }
}
