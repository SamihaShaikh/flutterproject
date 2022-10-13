import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timekeepers/views/dashboard/productdetail_page.dart';

class Productgridpage extends StatefulWidget {
  const Productgridpage({Key? key}) : super(key: key);

  @override
  State<Productgridpage> createState() => _ProductgridpageState();
}

class _ProductgridpageState extends State<Productgridpage> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
       borderRadius: BorderRadius.circular(30.0),
      child: GridTile(
        footer: GridTileBar(backgroundColor: Colors.black, leading: Icon(Icons.favorite_outline_rounded),title: Text("PRoduct1"),trailing: Icon(Icons.shopping_cart),),
        child: GestureDetector(
          onTap:  () {
                  print("button pressed");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>Productdetail_page()));
                },
          child: Image.asset("assets/images/tklogo.png")) ,
    
      ),
    );

    
   
     
    
  }
}