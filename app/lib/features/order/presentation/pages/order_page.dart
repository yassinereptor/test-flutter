import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/core/data/models/item_model.dart';
import 'package:popina_flutter_test/core/data/models/order_model.dart';
import 'package:popina_flutter_test/core/widgets/app_bar_widget.dart';
import 'package:popina_flutter_test/features/order/data/models/item_quantity_model.dart';
import 'package:popina_flutter_test/features/order/presentation/widgets/item_widget.dart';
import 'package:popina_flutter_test/features/order/presentation/widgets/sub_app_bar_widget.dart';


// Order Page
class OrderPage extends StatelessWidget {
  OrderModel orderModel;
  late List<ItemQuantityModel> itemQuantityList;

  OrderPage({Key? key, required this.orderModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    calcQuantity();

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          kToolbarHeight
        ),
        child: AppBarWidget(backBtn: true, title: "table " + orderModel.table!,),
      ),
      backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            SubAppBarWidget(itemQuantityList: itemQuantityList),
            ListView(
              shrinkWrap: true,
              children: [
                ...itemQuantityList.map((item) => ItemWidget(itemQuantityModel: item,)).toList(),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Group items by id and populate the [itemQuantityList] List
  void calcQuantity() {
    itemQuantityList = [];
    List<ItemModel> itemList = [...orderModel.items!];

    // [groupBy] By using (collection) package 
    var groupedArray = groupBy(orderModel.items!, (ItemModel obj) => obj.id);
    groupedArray.forEach((key, value) {
      itemQuantityList.add(ItemQuantityModel(itemModel: value, quantity: value.length));
    });
  }
  
}