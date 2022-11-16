
import 'package:get/get.dart';

class product{
  final int? product_id;
  final String? product_name;
  final String? product_details;
  final num? product_price;
  final String? product_brand;
  final String? modelcolor;
  final String? img_url;
  final num? qty;
  product( {this.product_price,this.product_id,this.product_name,this.product_details,this.product_brand,this.modelcolor,this.img_url,this.qty});

  final isFovourite=false.obs;

}