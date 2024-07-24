

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/feature/authendication/screens/login_screen/login_page.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Center(
          child: Image.asset('assets/logo.png',),
          // child: SvgPicture.asset('assets/logo.svg'),
        ),
        nextScreen:  const NewLoginScreen(),
        duration: 3500,
        backgroundColor: Colors.white,

        
        
        );
  }
}
