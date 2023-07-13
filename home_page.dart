// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_const, body_might_complete_normally_nullable, empty_statements, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/grocery_item_tile.dart';
import '../model/cart_model.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return cartpage();
          },
        )),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),

          // Good Morning
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 160.0),
            child: Text(
              "(: صباح الخير ",
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
            height: 14,
          ),

          // Lets Order Fresh Items For You
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              '  هيا نختار بعض المنتجات الطازجة من أجلك',
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
            height: 25.0,
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
            height: 20.0,
          ),

          Expanded(
            child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                    itemCount: value.shopItems.length,
                    padding: EdgeInsets.all(10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.4,
                    ),
                    itemBuilder: (context, index) {
                      return GroceryItemTile(
                        ItemName: value.shopItems[index][0],
                        ItemPrice: value.shopItems[index][1],
                        ImagePath: value.shopItems[index][2],
                        nice: value.shopItems[index][3],
                        onPressed: () =>
                            Provider.of<CartModel>(context, listen: false)
                                .addItemToCart(index),
                      );
                    });
              },
            ),
          ),
        ],
      )),
    );
  }
}
