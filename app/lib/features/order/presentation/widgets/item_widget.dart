import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/core/widgets/app_bar_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemWidget extends StatelessWidget {
  Color color;
  int quantity;
  String title;
  double price;

  ItemWidget({Key? key, required this.color,
  required this.quantity,
  required this.title,
  required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color
            ),
            width: 50,
            height: 40,
            child: Center(child: quantity.text.bold.xl2.gray100.make(),),
          ),
          SizedBox(width: 20),
          title.text.bold.xl2.color(color).make(),
          Spacer(),
          (price.toStringAsFixed(2) + "€").text.xl2.color(color).make(),
        ],
      ),
    );
  }
  
}