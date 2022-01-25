import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/core/widgets/app_bar_widget.dart';
import 'package:popina_flutter_test/features/order/presentation/widgets/item_widget.dart';
import 'package:popina_flutter_test/features/order/presentation/widgets/sub_app_bar_widget.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          kToolbarHeight
        ),
        child: AppBarWidget(backBtn: true, title: "table 8",),
      ),
      backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            SubAppBarWidget(),
            ListView(
              shrinkWrap: true,
              children: [
                ItemWidget(color: Colors.greenAccent, quantity: 2, title: "Velouté", price: 89.0,),
                ItemWidget(color: Colors.brown, quantity: 2, title: "Velouté", price: 8.0,),
                ItemWidget(color: Colors.brown, quantity: 2, title: "Velouté", price: 8.0,),
                ItemWidget(color: Colors.orange, quantity: 2, title: "Velouté", price: 8.0,),
              ],
            )
          ],
        ),
      ),
    );
  }
  
}