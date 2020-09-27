import 'package:flutter/material.dart';

import 'pageviewwidget.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  @override
  _AnimatedOpacityWidgetState createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double myOpacity = 0.2;
  Color myColor = Colors.purpleAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          myOpacity = 0.8;
          myColor = Colors.greenAccent;
        });
      }),
      appBar: AppBar(
        title: Text("Animated Opacity Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageViwWidget()),
                );
              })
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 400,
              child: Image.network(
                  "https://images.unsplash.com/photo-1592323360850-e317605f0526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 5),
              opacity: myOpacity,
              child: Container(
                height: 200,
                width: 400,
                color: myColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
