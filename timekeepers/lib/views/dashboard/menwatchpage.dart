import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timekeepers/views/dashboard/prductgridpage.dart';
import 'package:timekeepers/controllers/productcontroller.dart';

class Menwatchpage extends StatelessWidget {
   Menwatchpage({super.key});
  final prdcontroller = Get.put(productcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Men watch page')),
        body: GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: prdcontroller.products.length,
            itemBuilder: (ctx, i) => Productgridpage()
            // return Card(
            //   color: Colors.amber,
            //   child: Center(child: Text('Men product data')),
            // );
            ));
  }
}
