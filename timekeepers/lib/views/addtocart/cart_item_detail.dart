import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartItemDetail extends StatefulWidget {
  const CartItemDetail({super.key});

  @override
  State<CartItemDetail> createState() => _CartItemDetailState();
}

class _CartItemDetailState extends State<CartItemDetail> {
  int counter = 1;

  void incrementCounter() {
    setState(() {
      if (counter == 99) {
        return null;
      }
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter == 1) {
        return null;
      }
      counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            child: Image.asset("assets/images/Students1.png",
                fit: BoxFit.fitHeight),
            width: 100,
            height: 100,),
        
        Container(
          margin: EdgeInsets.only(left:15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Boat                ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                '\  Rs. 5000',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                        onTap: decrementCounter,
                        child: Icon(
                          Icons.remove_circle,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      child: Text(
                        '$counter',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                        onTap: incrementCounter,
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.white,
                          size: 30,
                        )),
                  )

      


                ],
              )
              
            ],
          ),
        ),
      ],
    );
    }
}