import 'package:flutter/material.dart';
import 'package:huungry/core/constants/app_colors.dart';
import 'package:huungry/shared/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.width,
    this.color,
    this.height,
  });

  final String text;
  final Function()? onTap;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 50,
        width: width, 
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        alignment: Alignment.center, 
        decoration: BoxDecoration(
          color: color ?? AppColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: CustomText(
          text: text,
          color: Colors.white,
        ),
      ),
    );
  }
}
