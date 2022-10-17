import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timekeepers/views/dashboard/productdetail_page.dart';

class Productgridpage extends StatelessWidget {
  final String id;
  final String product_name;
  
  const Productgridpage({Key? key, required this.id, required this.product_name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("productgridpage");
    return ClipRRect(
       borderRadius: BorderRadius.circular(10.0),
       
      child: GridTile(
        footer: GridTileBar(backgroundColor: Colors.black, leading: Icon(Icons.favorite_outline_rounded),title: Text(product_name),trailing: Icon(Icons.shopping_cart),),
        child: GestureDetector(
          onTap:  () {
                  print("button pressed");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>Productdetail_page()));
                },
          child: Image.asset("assets/images/tklogo.png",fit: BoxFit.cover)) ,
    
      ),
    );  
  }
}