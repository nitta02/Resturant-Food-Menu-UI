import 'package:flutter/material.dart';

class FoodItems extends StatelessWidget {
  final Color customColor;
  const FoodItems({super.key, required this.customColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: customColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              top: 20.0,
            ),
            child: Column(
              children: [
                const SizedBox(
                  width: 180,
                  child: ListTile(
                    title: Text(
                      "Cook something New.....",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("new and tastly\nrecipe in every minutes."),
                  ),
                ),
                Column(
                  children: [],
                )
              ],
            ),
          ),
          Image.asset(
            "assets/images/cook_new@2x.png",
          )
        ],
      ),
    );
  }
}
