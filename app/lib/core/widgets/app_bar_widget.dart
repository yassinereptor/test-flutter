import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class AppBarWidget extends StatelessWidget {
  bool backBtn;

  AppBarWidget({Key? key, this.backBtn = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    color: Colors.grey,
                  ),
                ],
              )),
              Text("3 commandes"),
              Spacer()
            ],
          ),
      ],
    );

  }
  
}