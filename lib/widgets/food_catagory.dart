// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:food_menu_app_ui/catagory_foodPages.dart/Italian_food.dart';
import 'package:food_menu_app_ui/catagory_foodPages.dart/bengali_food.dart';
import 'package:food_menu_app_ui/catagory_foodPages.dart/chines_food.dart';
import 'package:food_menu_app_ui/catagory_foodPages.dart/indian_food.dart';
import 'package:food_menu_app_ui/catagory_foodPages.dart/mexican_food.dart';
import 'package:food_menu_app_ui/constants/constants_items.dart';

class FoodCatagory extends StatefulWidget {
  const FoodCatagory({super.key});

  @override
  State<FoodCatagory> createState() => _FoodCatagoryState();
}

class _FoodCatagoryState extends State<FoodCatagory> {
  int selectedIndex = 0;
  List<Widget> foodPages = [
    const FoodCatagory(),
    const Indian_Food(),
    const Mexican_Food(),
    const Italian_Food(),
    const ChinessFood(),
    const Bengali_Food(),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10.0),
        itemCount: countryFoodItems.length,
        itemBuilder: (context, index) => _menuCatagory(index),
      ),
    );
  }

//   Widget _menuCatagory(int index) {
//     return NavigationBar(selectedIndex: selectedIndex, destinations: [
//       NavigationDestination(icon: Icon(Icons.all_inbox), label: 'All'),
//       NavigationDestination(icon: Icon(Icons.all_inbox), label: 'All'),
//       NavigationDestination(icon: Icon(Icons.all_inbox), label: 'All'),
//     ]);
//   }
// }

// ----------------------------------------------------------
  Widget _menuCatagory(int index) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: InkWell(
          hoverColor: Colors.white,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              // color: Colors.white,
            ),
            child: Center(
              child: Text(
                countryFoodItems[index],
                style: TextStyle(
                  letterSpacing: 2.1,
                  fontWeight: selectedIndex == index
                      ? FontWeight.bold
                      : FontWeight.w400,
                ),
              ),
            ),
          ),
        ));
  }
}
