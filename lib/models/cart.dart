import 'package:flutter_application_1/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalogue.dart';

class CartModel {
//catalogue field
  CatalogueModel? _catalogue;

//collection of IDs - store IDs of each item
  final List<int> _itemIds = [];

  // Get Catalogue
  CatalogueModel get catalogue => _catalogue!;

  set catalogue(CatalogueModel newCatalogue) {
    _catalogue = newCatalogue;
  }

  //Get items in the cart
  List<Item> get items =>
      _itemIds.map((id) => _catalogue!.getById(id)).toList();

  //Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);

  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}
