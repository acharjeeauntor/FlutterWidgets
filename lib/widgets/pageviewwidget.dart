import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/fadetransitionwidget.dart';
import 'package:flutterweeklywidget/widgets/pages/page1.dart';

import 'pages/page2.dart';
import 'pages/page3.dart';

class PageViwWidget extends StatefulWidget {
  @override
  _PageViwWidgetState createState() => _PageViwWidgetState();
}

class _PageViwWidgetState extends State<PageViwWidget> {
  PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FadeTransitionWidget()),
                );
              })
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          Page1(),
          Page2(),
          Page3(),
        ],
      ),
    );
  }
}
