// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_market/screens/login/components/body.dart';
import 'package:my_market/screens/thankspage.dart';
import 'package:provider/provider.dart';
import '../components/grocery_item_tile.dart';
import '../components/rounded_input_field.dart';
import '../model/cart_model.dart';
import 'cart_page.dart';

// ignore: use_key_in_widget_constructors
class finalpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            SizedBox(
              height: 60,
            ),
          
            // Good Morning
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 152.0),
              child: Text(
                "الخطوة الأخيرة ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "PNU",
                  color: Color.fromARGB(255, 243, 161, 8),
                ),
              ),
            ),
          
            SizedBox(
              height: 10,
            ),
          
            // Lets Order Fresh Items For You
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                'قم بإدخال البيانات الخاصة بك',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "PNU",
                  color: Color.fromARGB(255, 91, 7, 131),
                ),
              ),
            ),
          
            SizedBox(
              height: 24.0,
            ),
          
            // Divider
          
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                thickness: 10.0,
                color: Color.fromARGB(255, 247, 220, 172),
              ),
            ),
          
            SizedBox(
              height: 30.0,
            ),
          
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: RoundedInputField(
                    hintText: "قم بإدخال أسمك باللغة العربية",
                    onChanged: (value) {},
                    icon: Icons.border_color_rounded,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: RoundedInputField(
                    hintText: "قم بإدخال الحساب الخاص بك",
                    onChanged: (value) {},
                    icon: Icons.account_box,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: RoundedInputField(
                    hintText: "قم بإدخال العنوان الخاص بك",
                    onChanged: (value) {},
                    icon: Icons.home,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: RoundedInputField(
                    hintText: "قم بإدخال رقم الهاتف خاصتك",
                    onChanged: (value) {},
                    icon: Icons.phone,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: RoundedInputField(
                    hintText: "قم بإدخال طريقة الدفعة المناسبة لك",
                    onChanged: (value) {},
                    icon: Icons.payment,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Color.fromARGB(255, 82, 20, 141),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return thankspage();
                        }),
                      );
                    },
                    child: Text(
                      "توصيل المنتجات الأن",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontFamily: "PNU",
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
                  ],
                ),
          )),
    );
  }
}
