
import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';

class TInvoiceImageInAddTripScreen extends StatelessWidget {
  const TInvoiceImageInAddTripScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 45,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        
        color: TColors.white,
        borderRadius: BorderRadius.circular(5),
      ),

      //child: PhotoView(imageProvider: const  AssetImage('assets/bill1.png')),
      child: InstaImageViewer(
        child: ClipRRect(
          borderRadius:BorderRadius.circular(5),
          child: const Image(
            
            image: AssetImage('assets/bill1.png') as ImageProvider,
            // color: overlaycolor,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
