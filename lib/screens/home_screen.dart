// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_menu_app_ui/constants/color_constants.dart';
import 'package:food_menu_app_ui/widgets/food_catagory.dart';
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
