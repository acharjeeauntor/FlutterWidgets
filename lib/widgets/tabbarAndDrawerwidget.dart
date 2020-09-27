import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/pages/page1.dart';
import 'package:flutterweeklywidget/widgets/pages/page2.dart';
import 'package:flutterweeklywidget/widgets/pages/page3.dart';

import 'listwheelscrollviewwidget.dart';

class TabBarWidget extends StatefulWidget {
  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('First'),
              ),
              ListTile(
                title: Text('Second'),
              ),
              ListTile(
                title: Text('Third'),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("TabBar And Drawer Widget"),
          actions: [
            IconButton(
                icon: Icon(Icons.next_week),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListWheelScrollViewWidget()),
                  );
                })
          ],
          bottom: TabBar(tabs: [
            Tab(
              text: 'P1',
            ),
            Tab(
              text: 'P2',
            ),
            Tab(
              text: 'P3',
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
