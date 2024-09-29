// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_menu_app_ui/screens/catagory_foodPages.dart/Italian_food.dart';
import 'package:food_menu_app_ui/screens/catagory_foodPages.dart/bengali_food.dart';
import 'package:food_menu_app_ui/screens/catagory_foodPages.dart/chines_food.dart';
import 'package:food_menu_app_ui/screens/catagory_foodPages.dart/indian_food.dart';
import 'package:food_menu_app_ui/screens/catagory_foodPages.dart/mexican_food.dart';
import 'package:food_menu_app_ui/constants/color_constants.dart';
import 'package:food_menu_app_ui/constants/constants_items.dart';
import 'package:food_menu_app_ui/widgets/food_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: _appBarDesign(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 15),
            const FoodCatagory(),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return FoodItems(
                  customColor: customColor[index],
                );
              },
            ))
          ],
        ),
      ),
    );
  }

// ---------------------------------------------App Bar Design Method------------------------------
  AppBar _appBarDesign() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
      title: Image.asset(
        'assets/images/logo.png',
        color: Colors.black,
      ),
      // ignore: deprecated_member_use
      // color: Colors.black,

      centerTitle: true,
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search.svg'),
        )
      ],
    );
  }
}

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
