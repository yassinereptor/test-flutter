import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/core/widgets/app_bar_widget.dart';
import 'package:popina_flutter_test/features/dashboard/presentation/widgets/order_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  late RefreshController _refresherController;

  @override
  void initState() {
    _refresherController = new RefreshController();
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
        child: AppBarWidget(title: "3 commandes",),
      ),
      backgroundColor: Colors.grey[100],
        body: SmartRefresher(
          controller: _refresherController,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ListView(
              children: [
                OrderWidget(),
                OrderWidget(),
                OrderWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}