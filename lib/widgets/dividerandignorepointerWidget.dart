import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/alignwidget.dart';

class DividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Divider & IgnorePointer Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlignWidget()),
                );
              })
        ],
      ),
      body: Column(
        children: [
          IgnorePointer(
            ignoring: true,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 10,
            thickness: 5,
            indent: 50,
            endIndent: 50,
          ),
          IgnorePointer(
            ignoring: true,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
