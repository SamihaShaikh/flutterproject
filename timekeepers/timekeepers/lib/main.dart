import 'package:flutter/material.dart';
import 'package:timekeepers/views/dashboard/categorypage.dart';
import 'package:timekeepers/views/dashboard/homepage.dart';
import 'package:timekeepers/views/dashboard/productdetail_page.dart';
import 'package:timekeepers/views/dashboard/splashpage.dart';

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
       home: Splashpage(),
       routes: {
        CategoryPage.routeName:(ctx)=>CategoryPage(),
       },
      // home: Productdetail_page(),
    );
  }
}
