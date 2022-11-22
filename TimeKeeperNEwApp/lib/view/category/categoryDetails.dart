import 'package:flutter/material.dart';
import 'package:myshop_app/view/prodcutPage/product_Overview.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({super.key});
  static const routeName = '/Catgory-detail';
  @override
  Widget build(BuildContext context) {
        print("category Details");

    return Scaffold(
      //appBar: AppBar(title: Text("Womens")),
      body: ProductOverview(),
    );
  }
}
