import 'package:flutter/foundation.dart';
import 'category.dart';

class CategoriesList with ChangeNotifier {
  final List<Categories> _catlist = [
    Categories(
      id: 'c1',
      catTitle: 'Women',
      catImageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Categories(
      id: 'c2',
      catTitle: 'Men',
      catImageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Categories(
      id: 'c3',
      catTitle: 'Kids',
      catImageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
  ];
  List<Categories> get catlist {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._catlist];
  }

  Categories findById(String id) {
    return _catlist.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
