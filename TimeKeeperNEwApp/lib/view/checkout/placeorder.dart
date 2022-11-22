import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myshop_app/view/category/category_Overview.dart';
import 'package:myshop_app/view/dashborad/homePage.dart';

class PlaceOrderPage extends StatefulWidget {
  const PlaceOrderPage({super.key});

  @override
  State<PlaceOrderPage> createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("Order Placed")),
      
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.amber,
        body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 180),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/success.gif"))),
                  ),
                  TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(10.0),
                    textStyle: const TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CategoryOverview()));
                  },
                  child: const Text('Find More Products'),
                ),
                ])
                
                ),
                
                


                
                );
  }
}