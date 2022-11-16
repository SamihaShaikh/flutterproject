import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timekeepers/controllers/productcontroller.dart';
import 'package:timekeepers/views/product/prductgridpage.dart';

import '../drawer/drawerpage.dart';

class Womenwatchpage extends StatelessWidget {
  Womenwatchpage({super.key});
  final prdcontroller = Get.put(productcontroller());
  static const routeName = '/WomenWatchPage';

  @override
  Widget build(BuildContext context) {
    print('women watch page');

    return Scaffold(
        appBar: AppBar(title: Text('Women watch page')),
              drawer: Drawer(child: drawerpage()),

        body: GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: prdcontroller.products.length,
            itemBuilder: (ctx, i) => Productgridpage(
                img_url: prdcontroller.products[i].img_url!,
                product_name: '${prdcontroller.products[i].product_name!}',
                id: '${prdcontroller.products[i].product_id!}'))); // appBar: AppBar(title: Text('Women watch page')),
  }
}
