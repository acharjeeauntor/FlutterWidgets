import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/fittedboxwidget.dart';

class DismissibleWidget extends StatefulWidget {
  @override
  _DismissibleWidgetState createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Dismissible Widget"),
        actions: [
          IconButton(
            icon: Icon(Icons.next_week),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FittedBoxWidget()),
              );
            },
            tooltip: "Go next",
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Dismissible(
              key: ValueKey("myKey"),
              background: Container(
                child: Icon(
                  Icons.clear,
                  color: Colors.white,
                  size: 25.0,
                ),
                color: Colors.red,
              ),
              child: ListTile(
                title: Text(
                  "this is a Dismissible text",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.purple,
              onPressed: () {},
              child: Text("Used SizedBox"),
            ),
          )
        ],
      ),
    );
  }
}
