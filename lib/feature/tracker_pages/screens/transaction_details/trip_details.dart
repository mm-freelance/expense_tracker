// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:new_expense_tracker_techactive/common/appbar.dart';
// import 'package:new_expense_tracker_techactive/common/primary_header_container.dart';
// import 'package:new_expense_tracker_techactive/common/section_heading.dart';
// import 'package:new_expense_tracker_techactive/common/t_circular_image.dart';
// import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/home.dart';
// import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/succsess_screen/success_screen.dart';
// import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/transaction_details/widgets/project_details_section.dart';
// import 'package:new_expense_tracker_techactive/utils/colors.dart';
// import 'package:new_expense_tracker_techactive/utils/sizes.dart';

// class TripDetailsScreen extends StatelessWidget {
//   const TripDetailsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Header
//             TPrimaryHeaderContainer(
//               child: Column(
//                 children: [
//                   // -- TCustomAppBar
//                   Padding(
//                     padding: const EdgeInsets.only(top: TSizes.lg),
//                     child: TCustomAppBar(
//                       showBackArrow: true,
//                       blueBackground: true,
//                       title: Text(
//                         'Transaction Details',
//                         style: Theme.of(context)
//                             .textTheme
//                             .headlineMedium!
//                             .apply(color: TColors.white),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: TSizes.spaceBtwSections,
//                   ),
//                 ],
//               ),
//             ),

//             // -- body

//             Column(
//               children: [
//                 const TCircularImage(
//                   image: 'assets/image_14.png',
//                   width: 70,
//                   height: 70,
//                   padding: 0,
//                 ),
//                 const SizedBox(height: TSizes.spaceBtwItems),
//                 Container(
//                     padding: const EdgeInsets.symmetric(horizontal: TSizes.sm*2, vertical: TSizes.sm),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50),
//                       color: TColors.primary.withOpacity(0.2),
//                     ),
//                     child: Text(
//                       'Expense',
//                       style: Theme.of(context)
//                           .textTheme
//                           .bodyLarge!
//                           .apply(color: TColors.primary),
//                     )),
//                 const SizedBox(height: TSizes.spaceBtwItems),
//                 Center(
//                   child: Text(
//                     '\$85.00',
//                     style: Theme.of(context).textTheme.headlineLarge,
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(height: TSizes.spaceBtwSections/3),

//             const Padding(
//               padding: EdgeInsets.all(TSizes.defaultSpace),
//               child: Column(
//                 children: [
//                   // section title
//                   TSectionHeading(
//                     showActionButton: false,
//                     title: 'Transaction details', dateHeading: true,
//                   ),
//                   SizedBox(height: TSizes.spaceBtwItems),

//                   //Project info
//                   TTransactionDetailsSection(),
//                 ],
//               ),
//             ),

//             // Logout Button

//             const SizedBox(height: TSizes.spaceBtwSections/1.5),

//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
//               child: SizedBox(
//                 width: double.infinity,
//                 child: OutlinedButton(
//                     onPressed: () => Get.to(()=>  SuccessScreen(image: 'assets/logo.png', title: 'Success!', subTitle: 'The file you download is successfully done!', onPressed: () => Get.to(()=> const HomeScreen()))),
//                     child: const Text(
//                       'Download Receipt',
//                       style: TextStyle(color: TColors.primary, fontSize: 18),
//                     )),
//               ),
//             ),
//             const SizedBox(height: TSizes.spaceBtwSections * 2),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/home.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/transaction_details/widgets/single_expense_isapproved.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/transaction_details/widgets/title_date_total.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/transaction_details/widgets/trip_header_detail.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TripDetailsScreen extends StatelessWidget {
  const TripDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Sample Trip 1',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white),
        ),
      ),

      // -- body

      body: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                TTripDetailHeaderDetails(
                  totalExpense: '₹2700.00',
                ),
                SizedBox(height: TSizes.spaceBtwSections),
                TDateAndTotalExpense(amount: '₹1350.00'),
                SizedBox(height: TSizes.spaceBtwItems),
                TSingleExpenseCard(
                  title: 'Food - ',
                  details: 'I ate 2 idly',
                  amount: '₹345.00',
                  approvedInvoice: false,
                  approvedStatus: 'Rejected',
                  isApproved:false,
                ),
                TSingleExpenseCard(
                  title: 'Food - ',
                  details: 'I ate 2 idly',
                  amount: '₹345.00',
                  approvedInvoice: true,
                  approvedStatus: 'Approved',
                  isApproved: true,
                ),
                TSingleExpenseCard(
                  title: 'Food - ',
                  details: 'I ate 2 idly',
                  amount: '₹345.00',
                  approvedInvoice: true,
                  approvedStatus: 'Approved',
                  isApproved: true,
                ),
                SizedBox(height: TSizes.spaceBtwSections),
                TDateAndTotalExpense(amount: '₹1350.00'),
                SizedBox(height: TSizes.spaceBtwItems),
                TSingleExpenseCard(
                  title: 'Food - ',
                  details: 'I ate 2 idly',
                  amount: '₹345.00',
                  approvedInvoice: false,
                  approvedStatus: 'Rejected',
                  isApproved:false,
                ),
                TSingleExpenseCard(
                  title: 'Food - ',
                  details: 'I ate 2 idly',
                  amount: '₹345.00',
                  approvedInvoice: true,
                  approvedStatus: 'Approved',
                  isApproved: true,
                ),
                TSingleExpenseCard(
                  title: 'Food - ',
                  details: 'I ate 2 idly',
                  amount: '₹345.00',
                  approvedInvoice: true,
                  approvedStatus: 'Approved',
                  isApproved: true,
                ),
              ],
            )),
      ),
    );
  }
}
