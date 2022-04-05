import 'package:cli_test/firebase_service.dart';
import 'package:cli_test/shopping_item.dart';
import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  List<ShoppingItem> _shoppingItems = [];
  
  List<ShoppingItem> get shoppingItems {
    return _shoppingItems;
  }

  final _dbRef = FirebaseService().shoppingItemsRef;

  AppState() {
    _dbRef.snapshots().listen((documents) {
      _shoppingItems.clear();
      for (var doc in documents.docs) {
        _shoppingItems.add(doc.data());
      }
      notifyListeners();
    });
  }

  add(ShoppingItem item) async {
    await _dbRef.add(item);
  }
}
