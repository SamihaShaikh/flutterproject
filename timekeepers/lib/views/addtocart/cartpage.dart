// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:timekeepers/controllers/productcontroller.dart';
import 'package:timekeepers/models/product.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});


  @override
  Widget build(BuildContext context) {
    print('cart page');

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
    );

  }
  
}
