import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:timekeepers/controllers/categorycontroller.dart';
import 'package:timekeepers/views/dashboard/kidzwatchpage.dart';
import 'package:timekeepers/views/dashboard/menwatchpage.dart';
import 'package:timekeepers/views/dashboard/womenwatchpage.dart';

class CategoryPage extends StatelessWidget {
  // const Categorypage({Key? key}) : super(key: key);
  final catcontroller = Get.put(categorycontroller());

  @override
  Widget build(BuildContext context) {
    print("Categorypage");
    // return Scaffold(body: Text("Hello"),);
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<categorycontroller>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.categories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {

                          print('${controller.categories[index].cat_id}');
                          var cid= controller.categories[index].cat_id;

                          if(cid==1)
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Menwatchpage()));
                          }
                          if(cid==2)
                          {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Womenwatchpage()));
                          }
                          if(cid==3)
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Kidswatchpage()));
                          }
                        },
                        child: Card(
                          // margin: const EdgeInsets.all(12),
                          margin: const EdgeInsets.all(50),

                          child: Padding(
                            // padding: const EdgeInsets.all(16.0),
                            padding: const EdgeInsets.all(50.0),

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
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
                                          '${controller.categories[index].cat_name!}',
                                          style: TextStyle(fontSize: 28),
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
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   backgroundColor: Colors.amber,
      //   icon: Icon(
      //     Icons.add_shopping_cart_rounded,
      //     color: Colors.black,
      //   ),
      //   label: GetX<categorycontroller>(builder: (controller) {
      //     return Text(
      //       controller.count.toString(),
      //       style: TextStyle(color: Colors.black, fontSize: 24),
      //     );
      //   }),
      // ),
    );
  }
}
