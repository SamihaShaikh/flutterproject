import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timekeepers/controllers/productcontroller.dart';
import 'package:timekeepers/views/addtocart/cart_page.dart';
import 'package:timekeepers/views/addtocart/cartpage.dart';

class Productdetail_page extends StatelessWidget {
  Productdetail_page({Key? key}) : super(key: key);
  final prdcontroller = Get.put(productcontroller());

  @override
  Widget build(BuildContext context) {
    print("productdetails page");
    return Scaffold(
      appBar: AppBar(title: Text("Product details")),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
          ),
          Container(
            child: Image.asset("assets/images/Students1.png",
                fit: BoxFit.fitHeight),
            width: 500,
            height: 300,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                height: 400,
                width: 200,
                color: Colors.amber,
                child: Column(
                  children: [
                    Expanded(
                      child: GetX<productcontroller>(
                        builder: (controller) {
                          return ListView.builder(
                            itemCount: controller.products.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  print(
                                      '${controller.products[index].product_id}');
                                  var cid =
                                      controller.products[index].product_id;
                                },
                                child: Card(
                                  // margin: const EdgeInsets.all(12),
                                  margin: const EdgeInsets.all(50),

                                  child: Padding(
                                    // padding: const EdgeInsets.all(16.0),
                                    padding: const EdgeInsets.all(50.0),

                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${controller.products[index].product_name!}',
                                                  style:
                                                      TextStyle(fontSize: 28),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("button pressed");
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => CartPage()));
          // Add your onPressed code here!
        },
        label: const Text('View Cart'),
        icon: const Icon(Icons.add_shopping_cart_rounded),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
