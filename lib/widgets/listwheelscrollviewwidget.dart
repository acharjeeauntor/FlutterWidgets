import 'package:flutter/material.dart';

import 'dividerandignorepointerWidget.dart';

class ListWheelScrollViewWidget extends StatefulWidget {
  @override
  _ListWheelScrollViewWidgetState createState() =>
      _ListWheelScrollViewWidgetState();
}

class _ListWheelScrollViewWidgetState extends State<ListWheelScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListWheelScrollView Widget"),
          actions: [
            IconButton(
                icon: Icon(Icons.next_week),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DividerWidget()),
                  );
                })
          ],
        ),
//      body: ListWheelScrollView(itemExtent: 80, children: [
//        Container(
//          color: Colors.green,
//          child: ListTile(
//            title: Text("One"),
//            subtitle: Text("One"),
//          ),
//        ),
//        ListTile(
//          title: Text("Two"),
//          subtitle: Text("One"),
//        ),
//        ListTile(
//          title: Text("Three"),
//          subtitle: Text("One"),
//        ),
//        ListTile(
//          title: Text("Four"),
//          subtitle: Text("One"),
//        ),
//        ListTile(
//          title: Text("Five"),
//          subtitle: Text("One"),
//        ),
//        ListTile(
//          title: Text("Six"),
//          subtitle: Text("One"),
//        ),
//        ListTile(
//          title: Text("Seven"),
//          subtitle: Text("One"),
//        ),
//        ListTile(
//          title: Text("Eight"),
//          subtitle: Text("One"),
//        ),
//        ListTile(
//          title: Text("Ten"),
//          subtitle: Text("One"),
//        ),
//        ListTile(
//          title: Text("Eleven"),
//          subtitle: Text("One"),
//        ),
//        ListTile(
//          title: Text("Tewilv"),
//          subtitle: Text("One"),
//        ),
//      ]),

        body: ListWheelScrollView.useDelegate(
            magnification: 1.8,
            useMagnifier: true,
            itemExtent: 70,
//            offAxisFraction: 2,
//            diameterRatio: 2,
            physics: BouncingScrollPhysics(),
            childDelegate: ListWheelChildBuilderDelegate(
                childCount: 20,
                builder: (context, index) => Container(
                      color: Colors.red,
                      child: Center(
                        child: Text('Item $index'),
                      ),
                    ))));
  }
}
