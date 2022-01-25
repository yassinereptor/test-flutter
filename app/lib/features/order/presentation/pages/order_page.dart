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
        child: AppBarWidget(backBtn: true,),
      ),
        body: Column(
          children: [
            SubAppBarWidget(),
            ListView(
              shrinkWrap: true,
              children: [
                ItemWidget(),
                ItemWidget(),
                ItemWidget(),
                ItemWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
  
}