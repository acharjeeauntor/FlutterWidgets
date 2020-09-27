import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/sliverappbarwidget.dart';

class FadeTransitionWidget extends StatefulWidget {
  @override
  _FadeTransitionWidgetState createState() => _FadeTransitionWidgetState();
}

class _FadeTransitionWidgetState extends State<FadeTransitionWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
      animationBehavior: AnimationBehavior.preserve,
      vsync: this,
      duration: Duration(seconds: 8),
    );

    animation = Tween(begin: 0.0, end: 10.0).animate(controller);

    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade Tranistion Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SliverAppBarWidget()),
                );
              })
        ],
      ),
      body: FadeTransition(
        opacity: animation,
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
