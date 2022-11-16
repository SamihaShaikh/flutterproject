import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timekeepers/views/addtocart/cart_bg.dart';

import '../drawer/drawerpage.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override

  Widget build(BuildContext context) {
        print("cart_page_new");

return Scaffold(
  appBar: AppBar(
        title: Text("Cart"),
      ),
            drawer: Drawer(child: drawerpage()),
      backgroundColor: Color.fromRGBO(220, 220, 220, 1.0),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              CartBackground()
            ],
          ),
        ),

      ),
    );  }
}