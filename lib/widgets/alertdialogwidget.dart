import 'package:flutter/material.dart';

import 'animatedCrossFadeWidget.dart';

class AlertDialogWidget extends StatefulWidget {
  @override
  _AlertDialogWidgetState createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedCrossFadeWidget()),
                );
              })
        ],
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Alert"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Alert"),
                      elevation: 1.8,
                      content: Text("Do you want?"),
                      actions: [
                        RaisedButton(
                          onPressed: () {
                            print("Clicked No");
                            Navigator.pop(context);
                          },
                          child: Text("No"),
                        ),
                        RaisedButton(
                          onPressed: () {
                            print("Clicked Yes");
                          },
                          child: Text("Yes"),
                        )
                      ],
                    );
                  });
            }),
      ),
    );
  }
}
