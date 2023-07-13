// ignore_for_file: non_constant_identifier_names, unused_field, prefer_final_fields

import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
// list of items on sale
  List _shopItems = [
// [itemname, itemprice, imagepath, color]
    ["الأفوكادو", "15.00", "lib/assets/images/avocado.png", Colors.green],
    ["الموز", "12.50", "lib/assets/images/banana.png", Colors.yellow],
    ["الدجاج", "170.00", "lib/assets/images/chicken.png", Colors.brown],
    ["المياة", "6.00", "lib/assets/images/water.png", Colors.blue],

    ///
    ///

    ["السمك", "50.00", "lib/assets/images/fish.png", Colors.orange],
    ["الجمبري", "300.00", "lib/assets/images/shrimp.png", Colors.red],
    ["اللحم", "260.00", "lib/assets/images/meat.png", Colors.red],
    ["البازلاء", "25.00", "lib/assets/images/pea.png", Colors.green],

    ///
    ///

    ["الطماطم", "10.00", "lib/assets/images/tomato.png", Colors.red],
    ["الأرز", "22.50", "lib/assets/images/rice.png", Colors.grey],
    ["المكرونة", "23.00", "lib/assets/images/pasta.png", Colors.green],
    ["صلصة الطماطم", "30.00", "lib/assets/images/soup.png", Colors.red],

    ///
    ///

    ["الفراولة", "35.00", "lib/assets/images/strawberry.png", Colors.red],
    ["السوداني", "40.00", "lib/assets/images/peanut.png", Colors.orange],
    ["الخيار", "15.00", "lib/assets/images/cucumber.png", Colors.green],
    ["اللوز", "400.00", "lib/assets/images/almonds.png", Colors.orange],

    ///

    [
      "الشوكولاتة",
      "60.00",
      "lib/assets/images/chocolate-bar.png",
      Colors.brown
    ],
    ["الليمون", "12.50", "lib/assets/images/lemon.png", Colors.yellow],
    ["البيتزا", "120.00", "lib/assets/images/pizza.png", Colors.orange],
    ["البرجر", "80.00", "lib/assets/images/burger.png", Colors.orange],

    ///
    ///

    ["الشاي", "50.00", "lib/assets/images/tea.png", Colors.green],
    ["الزيت", "80.00", "lib/assets/images/oil.png", Colors.orange],
    ["السكر", "30.00", "lib/assets/images/sugar.png", Colors.green],
    ["عصير التفاح", "25.00", "lib/assets/images/juice.png", Colors.orange],

    ///
    ///

    ["التونة", "60.00", "lib/assets/images/tuna.png", Colors.blue],
    ["القهوة", "33.50", "lib/assets/images/coffee.png", Colors.brown],
    ["التمر", "30.00", "lib/assets/images/dates.png", Colors.orange],
    ["المشروم", "120.00", "lib/assets/images/mushroom.png", Colors.brown],

    ///
    ///

    ["الجبن التركي", "250.00", "lib/assets/images/cheese.png", Colors.orange],
    ["البطيخ", "60.00", "lib/assets/images/watermelon.png", Colors.green],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;
  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
