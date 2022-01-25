import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/core/data/models/order_model.dart';
import 'package:popina_flutter_test/features/order/presentation/pages/order_page.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderWidget extends StatelessWidget {
  OrderModel orderModel;

  OrderWidget({Key? key, required this.orderModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double price = 0;
    orderModel.items!.forEach((item) {
      price += item.price!;
    });
    String priceStr = price.toStringAsFixed(2);
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrderPage(orderModel: orderModel,)),
          ),
        child: Card(
          color: Colors.white,
          child: Container(
            height: 100,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.redAccent
                  ),
                  height: 100,
                  width: 100,
                  child: Center(
                    child: orderModel.table!.text.xl3.white.bold.make()
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.face, color: Colors.blueGrey),
                                SizedBox(width: 10,),
                                orderModel.guests!.text.xl2.make()
                              ],
                            ),
                            orderModel.date!.text.xl2.make()
                          ],
                        ),
                        if (orderModel.items!.isNotEmpty)
                        Row(
                          children: [
                            priceStr.split(".")[0].text.bold.xl3.make(),
                            ("," + priceStr.split(".")[1] + " " + (orderModel.items!.isNotEmpty ? orderModel.items!.first.currency! : "")).text.xl3.make(),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}