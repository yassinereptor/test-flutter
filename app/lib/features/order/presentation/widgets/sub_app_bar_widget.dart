import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popina_flutter_test/core/widgets/app_bar_widget.dart';

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
    return SizedBox(
      height: kToolbarHeight + 10,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text("6 produits")
                ),
              ),
              Center(
                child: Container(
                  color: Colors.grey,
                  width: 3,
                  height: kToolbarHeight - 20,
                )
              ),
              Expanded(child: Center(
                      child: Text("48,00 €")
                    )),
            ],
          ),
          Row(
            children: [
              Expanded(child: Container()),
          Expanded(child: Container(
            color: Colors.blue,
            height: 10,
          ))
            ],
          ),
        ],
      ),
    );
  }
  
}