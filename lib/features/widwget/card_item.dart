import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:huungry/core/constants/app_colors.dart';
import 'package:huungry/shared/custom_text.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.image,
    required this.text,
    required this.descripton,
    required this.rate,
  });

  final String image, text, descripton, rate;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(image, height: 110, fit: BoxFit.contain)),
            Gap(10),
            CustomText(text: text, weight: FontWeight.bold),
            CustomText(text: descripton),
            Row(
              children: [
                CustomText(text: "⭐  $rate", ),
                Spacer(),
                Icon(CupertinoIcons.heart_fill,color: AppColors.primary,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
