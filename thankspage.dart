// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'intro_page.dart';

class thankspage extends StatelessWidget {
  const thankspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // logo
          Padding(
            padding:
                EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20, top: 135),
            child: Image.asset(
              "lib/assets/images/thankyou.png",
            ),
          ),

          // we deliver groceries at your doorstep
          Padding(
            padding: EdgeInsets.only(right: 60, left: 60, top: 30),
            child: Text(
              "شكراً لك علي الوثوق في منتجاتنا ",
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
            height: 50,
          ),
          // fresh items everyday

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
                "أتريد التسوق مجدداً ؟",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "PNU",
                  fontSize: 16,
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
