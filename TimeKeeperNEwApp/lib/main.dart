  import 'package:flutter/material.dart';
import 'package:myshop_app/providers/products.dart';
import 'package:myshop_app/view/category/categoryDetails.dart';
import 'package:myshop_app/view/dashborad/splashPage.dart';
import './view/order_screen.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart';
import '../providers/orders.dart';
import '../view/cart_screen.dart';
import 'view/category/category_Overview.dart';
import 'view/category/searchproductpage.dart';
import 'view/prodcutPage/product_details.dart';
import './view/user_product_screen.dart';
import 'providers/catgoryProvider/categoriesList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => CategoriesList(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Time Keepers',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)
                .copyWith(secondary: Color.fromARGB(255, 134, 109, 46)),
            fontFamily: 'Lato'),
        //  home: CategoryOverview(),
        //home: CatgoryItem(),
        // home:SerachProduct(),
        home:SpalshPage(),
        routes: {
          ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
          CategoryDetails.routeName: (ctx) => CategoryDetails(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductScreen.routeName: (ctx) => UserProductScreen()
        },
      ),
    );
  }
}
