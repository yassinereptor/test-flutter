import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/core/data/models/item_model.dart';
import 'package:popina_flutter_test/core/utils/HexColor.dart';
import 'package:popina_flutter_test/core/widgets/app_bar_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemWidget extends StatelessWidget {
  ItemModel itemModel;
  int quantity;

  ItemWidget({Key? key, required this.itemModel, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: HexColor(itemModel.color!)
            ),
            width: 50,
            height: 40,
            child: Center(child: quantity.text.bold.xl2.gray100.make(),),
          ),
          SizedBox(width: 20),
          itemModel.name!.text.bold.xl2.color(HexColor(itemModel.color!)).make(),
          Spacer(),
          (itemModel.price!.toStringAsFixed(2) + itemModel.currency!).text.xl2.color(HexColor(itemModel.color!)).make(),
        ],
      ),
    );
  }
  
}