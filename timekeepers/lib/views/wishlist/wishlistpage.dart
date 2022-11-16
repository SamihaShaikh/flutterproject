
import 'package:flutter/material.dart';

import '../drawer/drawerpage.dart';


class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
     print("Wishlist Page");
   var screenWidth = MediaQuery.of(context).size;

   return Scaffold(
    appBar: AppBar(title: Text("Wishlist page"),
   ),
         drawer: Drawer(child: drawerpage()),

body: Container(
      margin: EdgeInsets.only(left: 10,right: 10,top: 10),
      height: 410,
      width: screenWidth.width * 1.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                spreadRadius: 1,
                blurRadius: 8)
          ]
      ),
      child: ListView(

        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Row(

              children: <Widget>[
                Text('Items',style: TextStyle(fontSize: 30),),
                Spacer(),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(20),
                      // color: Color.fromARGB(255, 147, 206, 29)
                  ),
                  child: Icon(Icons.favorite,color: Colors.pink,),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness:2,
              )
          ),
                    SizedBox(),

          Container(
            margin: EdgeInsets.only(left: 20,),
            child: Text("hello",),
          ),
          SizedBox(),
          Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness:2,
              )
          ),
                    SizedBox(),

          Container(
            margin: EdgeInsets.only(left: 20,),
            child:Text("hello"),
          ),
          SizedBox(),
          Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness:2,
              )
          ),
          
        ],
      ),
    ),


    );
  }
}
