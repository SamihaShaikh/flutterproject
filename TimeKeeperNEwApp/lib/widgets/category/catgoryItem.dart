import 'package:flutter/material.dart';
import 'package:myshop_app/providers/catgoryProvider/category.dart';
import 'package:myshop_app/view/category/categoryDetails.dart';
import 'package:provider/provider.dart';

class CatgoryItem extends StatelessWidget {
  const CatgoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    final catgories = Provider.of<Categories>(context, listen: false);
    return Container(
        height: 200,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(CategoryDetails.routeName, arguments: catgories.id);
          },
          child: Card(
            child: ListTile(
              leading: Image.network(catgories.catImageUrl!),
              title: Center(child: Text(catgories.catTitle!)),
            ),
          ),
        ));
  }
}
