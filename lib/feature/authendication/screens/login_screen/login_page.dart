import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/feature/authendication/screens/login_screen/widgets/login_form.dart';
import 'package:new_expense_tracker_techactive/feature/authendication/screens/login_screen/widgets/login_header.dart';
import 'package:new_expense_tracker_techactive/feature/tracker_pages/screens/succsess_screen/widgets/spacing_styles.dart';


class NewLoginScreen extends StatelessWidget {
  const NewLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return const  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [

              // Logo & Title and Sub-Title
               TLoginHeader(),

              // Form ( email / password / remember me with checkaBox / forget password / sign in button / create account button - sign up)
               TLoginForm(),

              // Divider

              // TFormDevider(deviderText: TTexts.orSignInWith,),
              // SizedBox(height: TSizes.spaceBtwSections),

              // // Footer
              // TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
