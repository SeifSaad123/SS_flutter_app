// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings, must_be_immutable

import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  String ItemName;
  String ItemPrice;
  String ImagePath;
  final nice;

  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.ItemName,
    required this.ItemPrice,
    required this.ImagePath,
    required this.nice,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: nice[100], borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(
              ImagePath,
              height: 90,
            ),

            // item name
            Text(
              ItemName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color.fromARGB(255, 71, 3, 102),
                fontFamily: "PNU",
              ),
            ),

            // price + Button
            MaterialButton(
              onPressed: onPressed,
              color: nice[800],
              child: Text(
                'EGP ' + ItemPrice,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "PNU",
                    fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
