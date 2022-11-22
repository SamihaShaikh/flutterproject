
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:myshop_app/view/category/searchproductpage.dart';
import 'package:myshop_app/view/drawer/app_drawer.dart';
import 'package:myshop_app/widgets/category/category_Grid.dart';
class CategoryOverview extends StatefulWidget {
  CategoryOverview({super.key});

  @override
  State<CategoryOverview> createState() => _CategoryOverviewState();
}

class _CategoryOverviewState extends State<CategoryOverview> {

  @override
  Widget build(BuildContext context) {

    print("category_overview");
    return Scaffold(
      appBar: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for something',
                        prefixIcon: Icon(Icons.search),
                        ),
                  ),
                ),
              ),
            ),
      drawer: AppDrawer(),    
      body: Container(
          color: Theme.of(context).colorScheme.primary, child: CatgoryGrid()),





    );
  }
}
