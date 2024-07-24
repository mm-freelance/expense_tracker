// import 'package:flutter/material.dart';
// import 'package:new_expense_tracker_techactive/feature/authendication/screens/widgets/card_login.dart';
// import 'package:new_expense_tracker_techactive/utils/colors.dart';
// import 'package:new_expense_tracker_techactive/utils/sizes.dart';

// class TLoginHeader extends StatelessWidget {
//   const TLoginHeader({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Column(
//           children: [
//             Container(
//                 width: double.infinity,
//                 height: 300,
//                 decoration: const BoxDecoration(
//                   color: TColors.primary,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(20),
//                     bottomRight: Radius.circular(20),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: TSizes.defaultSpace),
//                   child: Column(
                    
                    
//                     children: [
//                      const SizedBox(height: TSizes.appBarHeight/1.5),
//                       Image.asset(
//                         'assets/logo.png',height: 80,width: 170,),
//                       Text(
//                         'Welcome Back!',
//                         style: Theme.of(context)
//                             .textTheme
//                             .headlineLarge!
//                             .apply(color: TColors.white),
//                       )
//                     ],
//                   ),
//                 )),
//           ],
//         ),
//         const Positioned(
//           top: 230,
//           left: 30,
//           right: 30,
//           child: TCardLogin(),
//         ),
//       ],
//     );
//   }
// }
