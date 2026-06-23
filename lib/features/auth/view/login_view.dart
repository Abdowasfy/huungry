import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:huungry/core/constants/app_colors.dart';
import 'package:huungry/features/auth/widgets/custom_botton.dart';
import 'package:huungry/shared/custom_text.dart';
import 'package:huungry/shared/custom_textfeild.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,

        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Gap(100),
                  SvgPicture.asset("assets/logo/logo.svg"),
                  Gap(10),
                  CustomText(
                    text: "welcome Back, Discover The Fast Food",
                    color: Colors.white,
                    size: 13,
                    weight: FontWeight.w500,
                  ),
                  Gap(60),

                  CustomTextfeild(
                    hint: "Email Address",
                    isPassword: false,
                    controller: emailController,
                  ),
                  Gap(20),
                  CustomTextfeild(
                    hint: "Password",
                    isPassword: true,
                    controller: passwordController,
                  ),
                  Gap(45),
                  CustomAuthBotton(
                    text: "Login",
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        print("success login");
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
