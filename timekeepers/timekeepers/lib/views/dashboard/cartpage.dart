import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    print('cart page');

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
    );
  }
}
