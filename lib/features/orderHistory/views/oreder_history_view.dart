import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:huungry/core/constants/app_colors.dart';
import 'package:huungry/shared/custom_button.dart';
import 'package:huungry/shared/custom_text.dart';

class OrederHistoryView extends StatelessWidget {
  const OrederHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.separated(
          itemCount: 3,
          separatorBuilder: (_, __) => const Gap(15),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/Test/test.png",
                          height: 110,
                          fit: BoxFit.contain,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(),
                            Gap(10),
                            CustomText(
                              text: "Hamburger",
                              weight: FontWeight.bold,
                            ),
                            CustomText(text: "Qty: x2"),
                            CustomText(text: "Price : 20\$"),
                          ],
                        ),
                      ],
                    ),
                    Gap(20),
                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                        color: Colors.grey.shade400,
                        text: "Order Again",
                        width: double.infinity,
                        ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
