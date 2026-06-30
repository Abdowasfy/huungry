import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:huungry/shared/custom_text.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Order summary",
              size: 20,
              weight: FontWeight.w500,
            ),
            Gap(10),
              checkoutWidget("Order ", "18.32", false ,false),
              Gap(15),
              checkoutWidget("Taxes ", "0.3",false,false),
              Gap(15),
              checkoutWidget("Delivery fees", "1.5",false,false),
              Gap(10),
              Divider(),
              Gap(10),
              checkoutWidget("Delivery fees", "100",true,false),
              Gap(10),
              checkoutWidget("Estimated delivery time:", "15 - 30 mins",true,true),
              Gap(80),
              CustomText(
              text: "Payment methods",size: 20,weight: FontWeight.w500),



          ],
        ),
      ),
    );
  }
}

Widget checkoutWidget(title , price , isBold,isSmall) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomText(
        text: title,
        size:isSmall ? 15 : 15,
        weight: isBold ? FontWeight.bold : FontWeight.w500,
        color: isBold ? Colors.black : Colors.grey.shade600,
      ),
      CustomText(
        text: "$price",
        size:isSmall ? 10 : 15,
        weight: isBold ? FontWeight.bold : FontWeight.w500,
        color: isBold ? Colors.black : Colors.grey.shade600,
        ),
    ],
  );
}
