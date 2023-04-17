// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:food_menu_app_ui/constants/constants_items.dart';

class FoodCatagory extends StatefulWidget {
  const FoodCatagory({super.key});

  @override
  State<FoodCatagory> createState() => _FoodCatagoryState();
}

class _FoodCatagoryState extends State<FoodCatagory> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10.0),
        itemCount: countryFoodItems.length,
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: GestureDetector(
              onTap: () {
                print("Tapped");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  // color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    countryFoodItems[index],
                    style: const TextStyle(
                        letterSpacing: 2.1, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
