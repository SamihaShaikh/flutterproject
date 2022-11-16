import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:timekeepers/views/addtocart/cart_page.dart';
import 'package:timekeepers/views/category/categorypage.dart';
import 'package:timekeepers/views/dashboard/loginpage.dart';
import 'package:timekeepers/views/wishlist/wishlistpage.dart';

class drawerpage extends StatefulWidget {
  const drawerpage({super.key});

  @override
  State<drawerpage> createState() => _drawerpageState();
}

class _drawerpageState extends State<drawerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Text("Hello Samiha"),
          ),
          ListTile(
            title: Text('MenuItem1'),
            onTap: () {
              // Callpage();
            },
          ),
          ListTile(
            title: Text('MenuItem2'),
            onTap: () {
              // Callpage();
            },
          ),
          ListTile(
            title: Text('LOG-IN'),
            onTap: () {
          Navigator.push(context,
            MaterialPageRoute(builder:(context)=>Loginpage()
            )
            );
            },
          ),
          ListTile(
            title: Text('LOG OUT'),
            onTap: () {
              // Callpage();
            },
          ),
          ListTile(
            title: Text('Category Page'),
            onTap: () {
              Navigator.push(context,
            MaterialPageRoute(builder:(context)=>CategoryPage()
            )
            );
            },
          ),
          ListTile(
            title: Text('MY CART'),
            onTap: () {
              Navigator.push(context,
            MaterialPageRoute(builder:(context)=>CartPage()
            )
            );
            },
          ),
          ListTile(
            title: Text('WISHLIST'),
            onTap: () {
Navigator.push(context,
            MaterialPageRoute(builder:(context)=>WishlistPage()
            )
            );            },
          )
        ],
      ),
    );
  }
}