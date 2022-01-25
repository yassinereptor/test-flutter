import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/core/data/models/item_model.dart';
import 'package:popina_flutter_test/core/utils/HexColor.dart';
import 'package:popina_flutter_test/core/widgets/app_bar_widget.dart';
import 'package:popina_flutter_test/features/order/data/models/item_quantity_model.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemWidget extends StatelessWidget {
  ItemQuantityModel itemQuantityModel;

  ItemWidget({Key? key, required this.itemQuantityModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double price = 0;
    itemQuantityModel.itemModel.forEach((item) {
      price += item.price!;
    });
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: HexColor(itemQuantityModel.itemModel.first.color!)
            ),
            width: 50,
            height: 40,
            child: Center(child: itemQuantityModel.quantity.text.bold.xl2.gray100.make(),),
          ),
          SizedBox(width: 20),
          itemQuantityModel.itemModel.first.name!.text.bold.xl2.color(HexColor(itemQuantityModel.itemModel.first.color!)).make(),
          Spacer(),
          (price.toStringAsFixed(2) + itemQuantityModel.itemModel.first.currency!).text.xl2.color(HexColor(itemQuantityModel.itemModel.first.color!)).make(),
        ],
      ),
    );
  }
  
}