import 'package:flutter/material.dart';
import 'package:timekeepers/views/dashboard/productdetail_page.dart';

class Productgridpage extends StatelessWidget {
  final String id;
  final String product_name;
  final String img_url;

  const Productgridpage(
      {Key? key,
      required this.id,
      required this.product_name,
      required this.img_url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("productgridpage");
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.favorite_outline_rounded,
            ),
            onPressed: () {},
          ),
          title: Text(product_name),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {},
          ),
        ),
        child: GestureDetector(
            onTap: () {
              print("button pressed");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Productdetail_page()));
            },
            child: Image.asset(img_url, fit: BoxFit.cover)),
      ),
    );
  }
}
