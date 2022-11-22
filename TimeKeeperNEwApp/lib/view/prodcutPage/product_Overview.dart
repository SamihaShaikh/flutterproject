import 'package:flutter/material.dart';
import 'package:myshop_app/providers/catgoryProvider/categoriesList.dart';
import 'package:myshop_app/widgets/product/products_grid.dart';
import 'package:provider/provider.dart';
import '../drawer/app_drawer.dart';
import '../cart_screen.dart';
import '../../providers/cart.dart';
import '../../widgets/badge.dart';

enum FilterOption {
  Favorites,
  All,
}

class ProductOverview extends StatefulWidget {
  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  var _showOnlyFavorits = false;
  @override
  Widget build(BuildContext context) {
    print("Product_Overview Page");
    final catgoryId = ModalRoute.of(context)!.settings.arguments as String;
    final loadcat =
        Provider.of<CategoriesList>(context, listen: false).findById(catgoryId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadcat.catTitle!),
        
     


        actions: [
          PopupMenuButton(
            onSelected: (FilterOption selectedValue) {
              setState(() {
                if (selectedValue == FilterOption.Favorites) {
                  _showOnlyFavorits = true;
                } else {
                  _showOnlyFavorits = false;
                }
              });
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOption.Favorites,
                child: Text("Only Favorite"),
              ),
              const PopupMenuItem(
                value: FilterOption.All,
                child: Text("Show all"),
              )
            ],
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) =>
                Badge(value: cart.items.toString(), child: ch),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          )
        ],


      ),
      drawer: AppDrawer(),
      body: ProductGrid(_showOnlyFavorits),
    );
  }
}
