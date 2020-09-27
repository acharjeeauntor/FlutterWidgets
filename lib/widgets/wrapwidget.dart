import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/animatedcontainer.dart';

class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedContainerWidget()),
                );
              })
        ],
      ),
      body: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.spaceEvenly,
        children: [
          MyWidget(),
          MyWidget(),
          MyWidget(),
          MyWidget(),
          MyWidget(),
          MyWidget(),
          MyWidget(),
        ],
      ),
    );
  }
}

Widget MyWidget() {
  return Container(
      color: Colors.orange,
      width: 100,
      height: 100,
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "W5",
                textScaleFactor: 2.5,
              )),
            ),
          ),
        ],
      ));
}
