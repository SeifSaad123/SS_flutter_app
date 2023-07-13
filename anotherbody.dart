// ignore_for_file: prefer_const_constructors, camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../constants.dart';
import '../../intro_page.dart';
import '../../signup/signup_screen.dart';
import '../../welcome/components/background.dart';

class another extends StatelessWidget {
  const another({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              "هيا بنا نُكمل تسجيل الدخول معاً",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "PNU",
                fontSize: 29,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SvgPicture.asset(
              "lib/assets/icons/login.svg",
              height: 280,
            ),
            SizedBox(
              height: 30,
            ),
            RoundedInputField(
              hintText: "قم بإدخال الحساب الخاص بك",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            Container(
              ///////////////////////////////
              width: size.width * 0.9,
              height: 160,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 55),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Color.fromARGB(255, 82, 20, 141),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return intropage();
                      }),
                    ); 
                  },
                  child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "PNU",
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ), /////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return signUpScreen();
                      }),
                    );
                  },
                  child: Text(
                    "قم بإنشاء حساب",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontFamily: "PNU",
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Text(
                  "  لا تمتلك حساب ؟",
                  style: TextStyle(
                    fontFamily: "PNU",
                    fontSize: 14,
                    color: kPrimaryColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
