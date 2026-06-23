import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:huungry/core/constants/app_colors.dart';

class splashView extends StatelessWidget {
  const splashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,

      body: Center(
        child: Column(
          children: [
            Gap(280),

            SvgPicture.asset("assets/logo/logo.svg"),

            Spacer(),

            Image.asset("assets/splash/splash.png"),
          ],
        ),
      ),
    );
  }
}
