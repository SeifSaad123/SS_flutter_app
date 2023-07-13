// ignore_for_file: unused_local_variable, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, unused_import, missing_required_param

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_market/constants.dart';
import 'package:my_market/screens/login/components/anotherbody.dart';
import 'package:my_market/screens/signup/signup_screen.dart';
import 'package:my_market/screens/welcome/components/background.dart';
import 'package:my_market/screens/welcome/components/body.dart';
import 'package:my_market/screens/welcome/welcome_screen.dart';

import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../components/text_field_container.dart';

class sody extends StatelessWidget {
  const sody({required Column child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: another(),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background(RoundedInputField roundedInputField, {
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "lib/assets/images/main_top.png",
              width: 175,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "lib/assets/images/login_bottom.png",
              width: 170,
            ),
          ),
          child
        ],
      ),
    );
  }
}
