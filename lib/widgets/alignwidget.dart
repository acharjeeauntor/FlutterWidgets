import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/animatedIconWidget.dart';

class AlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align Widget "),
        actions: [
          IconButton(
            icon: Icon(Icons.next_week),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnimatedIconWidget()),
              );
            },
            tooltip: "Go next",
          )
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          height: 200,
          width: 200,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
