import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/core/widgets/app_bar_widget.dart';

class ItemWidget extends StatefulWidget {
  ItemWidget({Key? key}) : super(key: key);

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.greenAccent
          ),
          width: 40,
          height: 30,
          child: Center(child: Text("3"),),
        ),
        Text("Velouté"),
        Spacer(),
        Text("8,00€"),
      ],
    );
  }
  
}