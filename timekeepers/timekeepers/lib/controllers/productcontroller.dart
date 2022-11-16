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
  product(product_id : 1, product_name : 'boat', product_details :'smart watch',product_price: 25000 ,product_brand:'Boat',img_url:'images/Students1.png'),
  product(product_id : 2, product_name : 'fossil', product_details :'smart features',product_price: 25000 ,product_brand:'Fossil',img_url:'images/tklogo.png'),
  product(product_id : 3, product_name : 'boat', product_details :'smart features',product_price: 25000 ,product_brand:'Boat',img_url:'images/tklogo.png'),
  product(product_id : 4, product_name : 'rado', product_details :'smart features',product_price: 25000 ,product_brand:'Boat',img_url:'images/Students1.png'),

  ];
  products.value=prdresult;
}
}