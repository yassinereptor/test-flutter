import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';
class AppBarWidget extends StatelessWidget {
  bool backBtn;
  String title;

  AppBarWidget({Key? key, this.backBtn = false, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              children: [
                !backBtn ?
                Spacer() : Expanded(child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_ios_new_rounded),
                      color: Colors.blueGrey,
                    ),
                  ],
                )),
                title.text.xl2.make(),
                Spacer()
              ],
            ),
        ],
      ),
    );

  }
  
}