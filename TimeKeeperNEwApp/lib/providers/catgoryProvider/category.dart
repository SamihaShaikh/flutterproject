import 'package:flutter/foundation.dart';

class Categories with ChangeNotifier {
  final String? id;
  final String? catTitle;
  final String? catImageUrl;

  Categories({
    @required this.id,
    @required this.catTitle,
    @required this.catImageUrl,
  });
}
