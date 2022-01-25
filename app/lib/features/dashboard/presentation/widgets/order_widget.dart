import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/features/order/presentation/pages/order_page.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderWidget extends StatefulWidget {
  OrderWidget({Key? key}) : super(key: key);

  @override
  _OrderWidgetState createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrderPage()),
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
                    child: "8".text.xl3.white.bold.make()
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
                                "3".text.xl2.make()
                              ],
                            ),
                            "18:20".text.xl2.make()
                          ],
                        ),
                        Row(
                          children: [
                            "48".text.bold.xl3.make(),
                            ",50 €".text.xl3.make(),
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