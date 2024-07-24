
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/home/home.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "E-Mail",
              ),
            ),
            const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
    
            // Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
    
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
    
            // // Remember Me & forget Password
    
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     // Remeber Me
            //     Row(
            //       children: [
            //         Checkbox(value: true, onChanged: (value) {}),
            //         const Text("Remember Me"),
            //       ],
            //     ),
    
            //     // forget password
            //     TextButton(
            //       onPressed: ()=> Get.to(()=>const  HomeScreen()),
            //       child: const Text("Forget Password?"),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: TSizes.spaceBtwSections),
    
      const SizedBox(height: TSizes.spaceBtwSections),
            // Sign in Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(()=> const HomeScreen()),
                  child: const Text("Sign In"),
                )),
            const SizedBox(height: TSizes.spaceBtwItems),
    
            // // Create Account Button
            // SizedBox(
            //     width: double.infinity,
            //     child: OutlinedButton(
            //       onPressed: () => Get.to(()=>const HomeScreen()),
            //       child: const Text("Create Account"),
            //     )),
          ],
        ),
      ),
    );
  }
}
