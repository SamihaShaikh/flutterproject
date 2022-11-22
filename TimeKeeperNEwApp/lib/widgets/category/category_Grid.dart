import 'package:flutter/material.dart';
import 'package:myshop_app/widgets/category/catgoryItem.dart';
import 'package:provider/provider.dart';
import '../../providers/catgoryProvider/categoriesList.dart';

class CatgoryGrid extends StatelessWidget {
  const CatgoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final catData = Provider.of<CategoriesList>(context);
    final categorieslist = catData.catlist;
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: categorieslist.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: categorieslist[i],
        child: CatgoryItem(),
      ),
    );
  }
}
