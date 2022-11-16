import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:timekeepers/models/category.dart';

class categorycontroller extends GetxController{
  var categories = List<category>.empty().obs;

  get count => null;

  @override
  void onInit()
  {
    super.onInit();
    fetchcategories();
  }

void fetchcategories() async{
  await Future.delayed(Duration(seconds: 1));
  var catresult=[
  category(cat_id : 1, cat_name : 'MEN'),
  category(cat_id : 2, cat_name : 'WOMEN'),
  category(cat_id : 3, cat_name : 'KIDS'),


  ];
  categories.value=catresult;
}
}