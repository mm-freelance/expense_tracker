import 'package:flutter/material.dart';
import 'package:new_expense_tracker_techactive/common/rounded_container.dart';
import 'package:new_expense_tracker_techactive/common/image_invoice.dart';
import 'package:new_expense_tracker_techactive/utils/sizes.dart';

class TSingleExpense extends StatelessWidget {
  const TSingleExpense({
    super.key,
    required this.title,
    required this.details,
    required this.amount,
    required this.approvedInvoice,
    required this.approvedStatus,
    required this.isApproved,
    
    
  });

  final String title, details, approvedStatus, amount;
  final bool approvedInvoice;
  final bool isApproved;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.only(
              left: TSizes.md, right: TSizes.md, top: TSizes.md),
          width: double.infinity,
          showBorder: approvedInvoice ? false : true,
          backgroundColor: const Color.fromARGB(255, 192, 203, 255).withOpacity(0.4),
          borderColor:
              approvedInvoice ? Colors.transparent : Colors.transparent,
          // backgroundColor: const Color.fromARGB(255, 218, 229, 252),
          margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
          child: Stack(
            children: [
              // Positioned(
              //   right: 5,
              //   top: 0,
              //   child: Icon(
              //     selectedAddress ? Iconsax.tick_circle5 : null,
              //     color: TColors.dark),
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   approvedStatus,
                          //   maxLines: 1,
                          //   overflow: TextOverflow.ellipsis,
                          //   style: Theme.of(context)
                          //       .textTheme
                          //       .bodyLarge!
                          //       .apply(
                          //           color:
                          //               isApproved ? Colors.green : Colors.red),
                          // ),
                          // Text(
                          //   title,
                          //   maxLines: 1,
                          //   overflow: TextOverflow.ellipsis,
                          //   style: Theme.of(context).textTheme.headlineSmall,
                          // ),
                          const SizedBox(width: TSizes.md),
                          Row(
                            children: [
                              Text(
                                title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                 style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!.apply(
                                        fontSizeDelta: -2),
                              ),
                              Text(
                                amount,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    // .apply(
                                    //     color: isApproved
                                    //         ? Colors.green
                                    //         : Colors.red),
                              ),
                            ],
                          ),
                           Text(
                    details,
                    style: Theme.of(context).textTheme.bodyMedium,
                    softWrap: true,
                  ),
                        ],
                      ),
                      const TInvoiceImageInAddTripScreen()
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.sm / 2,
                  ),
                 
                  const SizedBox(
                    height: TSizes.md,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
