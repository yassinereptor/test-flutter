import 'package:popina_flutter_test/core/data/models/item_model.dart';

// Class to group items by id and calc quantity of each one
class ItemQuantityModel {
  List<ItemModel> itemModel;
  int quantity;

  ItemQuantityModel({required this.itemModel, required this.quantity});
}