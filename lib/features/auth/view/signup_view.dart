import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:huungry/core/constants/app_colors.dart';
import 'package:huungry/features/auth/widgets/custom_botton.dart';
import 'package:huungry/shared/custom_text.dart';

import '../../../shared/custom_textfeild.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController emailController =TextEditingController();
    TextEditingController nameController =TextEditingController();
    TextEditingController passController =TextEditingController();
    TextEditingController confirmController =TextEditingController();
    final GlobalKey<FormState> fromkey = GlobalKey<FormState>(); 
    
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Form(
            key: fromkey,
            child: Column(
              children: [
                Gap(100), 
                SvgPicture.asset("assets/logo/logo.svg"), 
                Gap(60),
                CustomTextfeild(hint: "Nmae", isPassword: false,controller: emailController,),
                Gap(19),
                CustomTextfeild(hint: "Email Address", isPassword: false,controller: nameController,),
                Gap(19),
                CustomTextfeild(hint: "password", isPassword: true,controller: passController,),
                Gap(19),
                CustomTextfeild(hint: "confirm password", isPassword: true,controller: confirmController,),
                Gap(45),

                CustomAuthBotton(text: "Sign UP",onTap: () {
                   if(fromkey.currentState!.validate()){
            
                        print("success register");
                        }
                },),

                 
            
                
              
               ],
            ),
          ),
        ),
      ),
    );
  }
}
