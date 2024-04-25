// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Bengali_Food extends StatelessWidget {
  const Bengali_Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.green,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              top: 20.0,
            ),
            child: Column(
              children: [
                SizedBox(
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
    );;
  }
}
