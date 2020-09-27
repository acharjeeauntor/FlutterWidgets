import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/animatedopacitywidget.dart';

class OpacityWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnimatedOpacityWidget()),
                );
              })
        ],
      ),
      body: Center(
//        child: Opacity(
//          opacity: 0.3,
//          child: Image.network(
//              "https://images.unsplash.com/photo-1592323360850-e317605f0526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
//        ),

        child: Stack(
          children: [
            Container(
              height: 200,
              width: 400,
              child: Image.network(
                  "https://images.unsplash.com/photo-1592323360850-e317605f0526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            ),
            Opacity(
              opacity: 0.3,
              child: Container(
                height: 200,
                width: 400,
                color: Colors.redAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
