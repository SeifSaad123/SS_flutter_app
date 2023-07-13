// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:my_market/screens/finalpage.dart';
import 'package:provider/provider.dart';

import '../model/cart_model.dart';
import 'intro_page.dart';

class cartpage extends StatelessWidget {
  cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Let's order fresh items for you
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 99.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "السلة الخاصة بي",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "PNU",
                    color: Color.fromARGB(255, 91, 7, 131),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),

              // Divider

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  thickness: 10.0,
                  color: Color.fromARGB(255, 107, 62, 128),
                ),
              ),
              // list view of cart
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: ListView.builder(
                    itemCount: value.cartItems.length,
                    padding: EdgeInsets.all(12),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 236, 221, 247),
                              borderRadius: BorderRadius.circular(8)),
                          child: ListTile(
                            leading: Image.asset(
                              value.cartItems[index][2],
                              height: 36,
                            ),
                            title: Text(
                              value.cartItems[index][0],
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "PNU",
                                color: Color.fromARGB(255, 91, 7, 131),
                              ),
                            ),
                            subtitle: Text(
                              'EGP ' + value.cartItems[index][1],
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "PNU",
                                color: Color.fromARGB(255, 93, 60, 109),
                              ),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.cancel),
                              onPressed: () =>
                                  Provider.of<CartModel>(context, listen: false)
                                      .removeItemFromCart(index),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              // total amount + pay now

              Padding(
                padding: EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 82, 20, 141),
                  ),
                  padding: EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'السعر الكلي',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "PNU",
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),

                          SizedBox(height: 10),
                          // total price
                          Text(
                            'EGP ${value.calculateTotal()}',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "PNU",
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),

                      // pay now
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 82, 20, 141),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return finalpage();
                              }),
                            );
                          },
                          child: Text(
                            "إكمال عملية الشراء",
                            style: TextStyle(
                              color: Color.fromARGB(255, 82, 20, 141),
                              fontWeight: FontWeight.bold,
                              fontFamily: "PNU",
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
