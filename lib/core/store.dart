import 'package:velocity_x/velocity_x.dart';
import 'package:learningdart/model/cart.dart';
import 'package:learningdart/model/catalog.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
