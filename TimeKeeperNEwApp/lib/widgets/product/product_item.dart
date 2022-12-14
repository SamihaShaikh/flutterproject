
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/cart.dart';
import '../../providers/prductProvider/product.dart';
import '../../view/prodcutPage/product_details.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      
        borderRadius: BorderRadius.circular(0),
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: Color.fromARGB(221, 222, 205, 125),
            leading: Consumer<Product>(
              builder: (ctx, product, child) => IconButton(
                icon: Icon(product.isFavorite!
                    ? Icons.favorite
                    : Icons.favorite_border),
                color: Theme.of(context).colorScheme.secondary,
                onPressed: () {
                  product.toggleFavoriteStatus();
                },
              ),
            ),
            title: Text(
              product.title!,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                cart.addItem(product.id!, product.price!, product.title!);
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Add item to cart!'),
                  duration: Duration(seconds: 5),
                  action: SnackBarAction(
                    label: 'UNDO',
                    onPressed: () {
                      cart.removeSingleItem(product.id!);
                    },
                  ),
                ));
              },
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(ProductDetailsScreen.routeName,
                  arguments: product.id);
            },
            child: Image.network(
              product.imageUrl!,
              fit: BoxFit.cover,
            ),
          ),
        ));
        
  }
}
