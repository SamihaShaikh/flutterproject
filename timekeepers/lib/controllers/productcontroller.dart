import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:timekeepers/models/category.dart';
import 'package:timekeepers/models/product.dart';

class productcontroller extends GetxController{
  var products = List<product>.empty().obs;

  get count => null;

  @override
  void onInit()
  {
    super.onInit();
    fetchproducts();
  }

void fetchproducts() async{
  await Future.delayed(Duration(seconds: 1));
  var prdresult=[
  product(product_id : 1, product_name : 'trtr', product_details :'fdgdfhfghgh',product_price: 25000 ,product_brand:'Boat'),
  product(product_id : 2, product_name : 'hhjhj', product_details :'fdgdfhfghgh',product_price: 25000 ,product_brand:'Fossil'),
  product(product_id : 3, product_name : 'jyjyjyj', product_details :'fdgdfhfghgh',product_price: 25000 ,product_brand:'Boat'),
  product(product_id : 4, product_name : 'jyjyjyj', product_details :'fdgdfhfghgh',product_price: 25000 ,product_brand:'Boat'),

  ];
  products.value=prdresult;
}
}