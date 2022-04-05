import 'package:cli_test/shopping_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  var shoppingItemsRef = FirebaseFirestore.instance
      .collection('ShoppingItems')
      .withConverter<ShoppingItem>(
        fromFirestore: (snapshot, _) =>
            ShoppingItem.fromJSON(snapshot.data()!, snapshot.id),
        toFirestore: (item, _) => item.toJSON(),
      );

  add(ShoppingItem item) async {
    await shoppingItemsRef.add(item);
  }
}
