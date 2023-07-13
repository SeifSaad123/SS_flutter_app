// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constants.dart';
import 'model/cart_model.dart';
import 'screens/welcome/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
      return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp( 
        debugShowCheckedModeBanner: false,
      title: 'MY MARKET',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: welcomescreen(),),
      
    );
  }
}
