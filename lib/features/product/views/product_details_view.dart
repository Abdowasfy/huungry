import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:huungry/core/constants/app_colors.dart';
import 'package:huungry/features/product/widget/spicy_slider.dart';
import 'package:huungry/features/product/widget/toppings.dart';
import 'package:huungry/shared/custom_button.dart';
import 'package:huungry/shared/custom_text.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  double value = 0.5;
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpicySlider(
                value: value,
                onChanged: (v) {
                  setState(() {
                    value = v;
                  });
                },
              ),
              Gap(50),
              CustomText(text: "Toppings", size: 20, weight: FontWeight.bold),
              Gap(30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ToppingsCard(
                      title: "tomato",
                      image: "assets/Test/tomato.png",
                      onTap: () {},
                    ),
                    Gap(20),
                    ToppingsCard(
                      title: "Onions",
                      image: "assets/Test/Onions.png",
                      onTap: () {},
                    ),
                    Gap(20),
                    ToppingsCard(
                      title: "Pickles",
                      image: "assets/Test/Pickles.png",
                      onTap: () {},
                    ),
                    Gap(20),
                    ToppingsCard(
                      title: "Bacons",
                      image: "assets/Test/Bacons.png",
                      onTap: () {},
                    ),
                    Gap(20),
                  ],
                ),
              ),
              Gap(29),
              CustomText(
                text: "Side options",
                size: 20,
                weight: FontWeight.bold,
              ),
              Gap(30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ToppingsCard(
                      title: "Fries",
                      image: "assets/Test/Fries.png",
                      onTap: () {},
                    ),
                    Gap(20),
                    ToppingsCard(
                      title: "Coleslaw",
                      image: "assets/Test/Coleslaw.png",
                      onTap: () {},
                    ),
                    Gap(20),
                    ToppingsCard(
                      title: "Salad",
                      image: "assets/Test/Salad.png",
                      onTap: () {},
                    ),
                    Gap(20),
                    ToppingsCard(
                      title: "Onion",
                      image: "assets/Test/Onion.png",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Total", size: 30),
                      CustomText(text: "\$ 18.9", size: 30),
                    ],
                  ),
                  CustomButton(text: 'Add To Cart', onTap: () {}),
                ],
              ),
              Gap(100),
            ],
          ),
        ),
      ),
    );
  }
}
