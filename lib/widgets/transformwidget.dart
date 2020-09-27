import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/checkboxlisttilewidget.dart';

class TransformWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CheckBoxListTileWidget()),
                );
              })
        ],
      ),
      body: Center(
        child: Transform.rotate(
          angle: pi / 4,
          origin: Offset(50, 50),
          child: Container(
            height: 150,
            width: 150,
            color: Colors.blue,
          ),
        ),
//        child: Transform.scale(
//          scale: 1.5,
//          origin: Offset(50, 50),
//          child: Container(
//            height: 150,
//            width: 150,
//            color: Colors.blue,
//          ),
//        ),
      ),
    );
  }
}
