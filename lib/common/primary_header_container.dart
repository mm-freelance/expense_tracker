import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/common/rounded_container.dart';
import 'package:new_expense_tracker_techactive/common/widget_curved_edges.dart';
import 'package:new_expense_tracker_techactive/utils/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child, this.height,
  });

  final Widget child;
  final double? height;
 

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget( 
      child: Container(
        color:Colors.blue,
        height: height,
       
      
        // -- if [size.isFinite': is not true.in stack] error occured --> Read README.md file at [DESIGN ERROS] #1
        child: Stack(
          children: [
            // Background Custom shapes
            Positioned(
              top: -150,
              right: -250,
              child: TRoundedContainer(
                width: 400,
                height: 400,
                radius: 400,
                padding: const EdgeInsets.all(0),
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TRoundedContainer(
                width: 400,
                height: 400,
                radius: 400,
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
