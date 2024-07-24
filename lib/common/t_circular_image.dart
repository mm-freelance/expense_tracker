import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage(
      {super.key,
      this.fit = BoxFit.cover,
      required this.image,
      this.isNetworkImage = false,
      this.overlaycolor,
    //  this.backgroundColor,
      this.width = 56,
      this.height = 56,
      this.padding = TSizes.sm});

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlaycolor;
  //final Color? backgroundColor;
  final double width, height, padding;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        // if image background color is null then switch it to light and dark mode color design.
        color:  TColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: 
            AssetImage(image) as ImageProvider,
        color: overlaycolor,
        fit: fit,
      ),
    );
  }
}
