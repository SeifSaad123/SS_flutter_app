// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class intropage extends StatelessWidget {
  intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // logo
          Padding(
            padding:
                EdgeInsets.only(left: 30.0, right: 30.0, bottom: 5, top: 70),
            child: Image.asset(
              "lib/assets/images/gramer.png",
            ),
          ),

          // we deliver groceries at your doorstep
          Padding(
            padding: EdgeInsets.only(right: 60, left: 60, top: 30),
            child: Text(
              "نحن نقوم بتوصيل جميع طلباتك حتي باب المنزل",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "PNU",
                fontSize: 40,
                color: Color.fromARGB(255, 110, 7, 158),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // fresh items everyday
          Text(
            "يوجد لدينا جميع الأغذية الطازجة يومياً",
            style: TextStyle(
              color: Color.fromARGB(255, 166, 87, 202),
              fontSize: 14,
              fontFamily: "PNU",
            ),
          ),
          SizedBox(height: 25),

          // get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomePage();
            })),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 120, 46, 189),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(25),
              child: Text(
                "تسوق الأن",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "PNU",
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
