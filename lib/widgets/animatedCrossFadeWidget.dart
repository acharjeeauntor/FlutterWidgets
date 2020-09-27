import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/imageWidget.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  @override
  _AnimatedCrossFadeWidgetState createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Cross Fade Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageWidget()),
                );
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          check = !check;
        });
      }),
      body: Center(
        child: AnimatedCrossFade(
            firstChild: Container(
              height: 250,
              width: 250,
              child: Image.asset("assets/images/img1.jpg"),
            ),
            secondChild: Container(
              height: 250,
              width: 250,
              child: Image.asset("assets/images/img2.jpeg"),
            ),
            crossFadeState:
                check ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 1)),
      ),
    );
  }
}
