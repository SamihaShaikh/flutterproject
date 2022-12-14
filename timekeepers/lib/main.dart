import 'package:flutter/material.dart';
import 'package:timekeepers/views/addtocart/cart_page.dart';
import 'package:timekeepers/views/category/categorypage.dart';
import 'package:timekeepers/views/drawer/drawerpage.dart';
import 'package:timekeepers/views/dashboard/homepage.dart';
import 'package:timekeepers/views/product/productdetail_page.dart';
import 'package:timekeepers/views/dashboard/splashpage.dart';
import 'package:timekeepers/views/wishlist/wishlistpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("HomePage");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber).copyWith(secondary: Colors.black),
        
        primarySwatch: Colors.blue,
      ),
      //  home: WishlistPage(),
      // home:drawerpage(),
      // home:CartPage(),
       routes: {
        CategoryPage.routeName:(ctx)=>CategoryPage(),
       },
      home: Splashpage(),
    );
  }
}
