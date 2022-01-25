import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/core/widgets/app_bar_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class SubAppBarWidget extends StatefulWidget {
  SubAppBarWidget({Key? key}) : super(key: key);

  @override
  _SubAppBarWidgetState createState() => _SubAppBarWidgetState();
}

class _SubAppBarWidgetState extends State<SubAppBarWidget> {

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
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
                    child: "6 produits".text.xl2.make()
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
                    "48".text.bold.blue400.xl3.make(),
                    ",50 €".text.blue400.xl3.make(),
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