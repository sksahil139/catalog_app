import 'package:learningdart/model/catalog.dart';
import 'package:learningdart/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel{

  //catalog field
  late CatalogModel catalog;

  //Store ids of each element
  final List<int> _itemIds = [];

  //get items in the cart
  List<Item> get items => _itemIds.map((e) => catalog.getById(e) as Item).toList();

  //get total price
  num get totalPrice => items.fold(0,(total,current)=> total+current.price);

}


class AddMutation extends VxMutation<MyStore>{
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
