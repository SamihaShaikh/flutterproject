import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Productdetail_page extends StatefulWidget {
  const Productdetail_page({Key? key}) : super(key: key);

  @override
  State<Productdetail_page> createState() => _Productdetail_pageState();
}

class _Productdetail_pageState extends State<Productdetail_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("product details")),
    );
  }
}