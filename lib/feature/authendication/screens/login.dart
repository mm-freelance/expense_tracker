// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:new_expense_tracker_techactive/feature/authendication/screens/widgets/login_header.dart';
// import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/home.dart';
// import 'package:new_expense_tracker_techactive/utils/sizes.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//         body: SingleChildScrollView(
          
//       child: Column(
//         children: [
//         const  SizedBox(
//             height: 450,
//             child: TLoginHeader(),
//           ),
//          const  SizedBox(
//             height: TSizes.spaceBtwSections,
//           ),

//           // buttons

//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal:  TSizes.defaultSpace),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: ()=> Get.to(()=> const HomeScreen()),
//                     child: const Text('Login'),
//                   ),
//                 ),
//               ),

         
//         ],
//       ),
//     ));
//   }
// }
