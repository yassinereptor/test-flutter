import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/core/widgets/app_bar_widget.dart';
import 'package:popina_flutter_test/features/order/data/models/item_quantity_model.dart';
import 'package:velocity_x/velocity_x.dart';

class SubAppBarWidget extends StatelessWidget {
  List<ItemQuantityModel> itemQuantityList;

  SubAppBarWidget({Key? key, required this.itemQuantityList}) : super(key: key);
  
  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    // Calc price and quantity by item group
    int quantity = 0;
    double price = 0;

    itemQuantityList.forEach((item) {
      quantity += item.quantity;
      item.itemModel.forEach((element) {
        price += element.price!;
      });
    });

    String priceStr = price.toStringAsFixed(2);

    return Container(
      color: Colors.white,
      height: kToolbarHeight + 10,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: (quantity.toString() + " produits").text.xl2.make()
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.grey[100],
                    width: 2,
                    height: kToolbarHeight - 20,
                  )
                ),
                Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    priceStr.split(".")[0].text.bold.blue400.xl3.make(),
                    ("," + priceStr.split(".")[1] + " " + (itemQuantityList.isNotEmpty ? itemQuantityList.first.itemModel.first.currency! : "")).text.blue400.xl3.make(),
                  ],
                )),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(child: Container()),
          Expanded(child: Container(
            color: Colors.blue[400],
            height: 5,
          ))
            ],
          ),
        ],
      ),
    );
  }
  
}