import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/features/order/presentation/pages/order_page.dart';

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
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OrderPage()),
        ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
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
                child: Text("8")
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.face),
                          Text("3")
                        ],
                      ),
                      Text("18:20")
                    ],
                  ),
                  Row(
                    children: [
                      Text("48"),
                      Text(",50 €"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
}