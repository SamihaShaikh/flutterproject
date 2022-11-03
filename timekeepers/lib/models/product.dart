
import 'package:get/get.dart';

class product{
  final int? product_id;
  final String? product_name;
  final String? product_details;
  final int? product_price;
  final String? product_brand;
  final String? modelcolor;
  final String? img_url;
  product( {this.product_price,this.product_id,this.product_name,this.product_details,this.product_brand,this.modelcolor,this.img_url});

  final isFovourite=false.obs;

}