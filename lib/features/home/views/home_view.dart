import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:huungry/core/constants/app_colors.dart';
import 'package:huungry/features/product/views/product_details_view.dart';
import 'package:huungry/features/widwget/card_item.dart';
import 'package:huungry/features/widwget/search_field.dart';
import 'package:huungry/features/widwget/user_header.dart';
import 'package:huungry/shared/custom_text.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List category = ["All", "Combo", "Sliders", "Classic", "anthor"];
  int Selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Gap(75),
              UserHeader(),
              Gap(25),
             SearchField(),
              Gap(25),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(category.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            Selectedindex = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            color: Selectedindex == index
                                ? AppColors.primary
                                : Color(0xffF3F4F6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 27,
                          ),
                          child: CustomText(
                            text: category[index],
                            weight: FontWeight.w600,
                            color: Selectedindex == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
              Gap(25),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (c) {
                         return ProductDetailsView();
                        } ));
                      },
                      child: CardItem(
                        image: "assets/Test/test.png",
                        text: "Cheeseburger",
                        descripton: "Wendy's Burger",
                        rate: "4.9",
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
