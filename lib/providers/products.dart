import 'package:flutter/material.dart';

import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://www.quramo.com/sites/default/files/styles/large/public/doing-right-cover-design.jpg?itok=w--1MD-d',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://www.quramo.com/sites/default/files/styles/large/public/a-little-of-everything-cover-design.jpg?itok=EomGmWkf',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://www.quramo.com/sites/default/files/styles/large/public/2019-12/FRONT%20COVER.jpg?itok=cFCAmG1A',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://www.quramo.com/sites/default/files/styles/large/public/2019-02/drama-queen_cover-design%2030.08.2018-01.jpg?itok=qOUxTY2h',
    ),
  ];

  // var _showFavouritesOnly = false;
  List<Product> get items {
    return [..._items];
  }

  List<Product> get favouriteItems {
    return _items.where((prodItem) => prodItem.isFavourite).toList();
  }

//   void showFavouritesOnly () {
//     _showFavouritesOnly = true;
//   }

//  void showAll () {
//     _showFavouritesOnly = false;
//   }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
