import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/dismissiblewidget.dart';

class AnimatedIconWidget extends StatefulWidget {
  @override
  _AnimatedIconWidgetState createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  bool playing = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedIcon Widget"),
        actions: [
          IconButton(
            icon: Icon(Icons.next_week),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DismissibleWidget()),
              );
            },
            tooltip: "Go next",
          )
        ],
      ),
      body: Center(
        child: Container(
          height: 70,
          width: 70,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (!playing) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
                playing = !playing;
              });
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.home_menu,
              progress: _controller,
              size: 80,
            ),
          ),
        ),
      ),
    );
  }
}
