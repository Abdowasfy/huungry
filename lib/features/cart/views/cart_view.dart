import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:huungry/features/cart/widget/cart_item.dart';
import 'package:huungry/features/checkout/views/checkout_view.dart';
import 'package:huungry/shared/custom_button.dart';
import 'package:huungry/shared/custom_text.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  late List<int> quantites;
  final int itemcount =20;

  @override
  void initState() {
    quantites = List.generate(20, (_) =>1);
  }

  void onAdd(int index){
    setState(() {
      quantites[index]++;
    });
  }

  void onMin(int index){
    setState(() {
      if(quantites[index] > 1){
      quantites[index]--;

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0,scrolledUnderElevation: 0,backgroundColor:Colors.white,),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const Gap(20),

              Expanded(
                child: ListView.separated(
                  itemCount: itemcount,
                  separatorBuilder: (_, __) => const Gap(15),
                  itemBuilder: (context, index) {
                    return CartItem(
                      image: "assets/Test/test.png",
                      text: "Hamburger",
                      desc: "Veggie Burger",
                      number: quantites[index],
                      onAdd: () => onAdd(index),
                      onMin: () =>  onMin(index),
                    );
                  },
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30) )
                ),
                padding: const EdgeInsets.symmetric(vertical: 20),
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CustomText(
                          text: "Total",
                          size: 16,
                        ),
                        CustomText(
                          text: "\$18.9",
                          size: 24,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),

                    CustomButton(
                      text: "Checkout",
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return CheckoutView();
                        } ));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}