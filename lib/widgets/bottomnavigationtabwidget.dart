import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/pages/page1.dart';
import 'package:flutterweeklywidget/widgets/pages/page2.dart';

import 'animatedcontainer.dart';

class BottomNavigationTabWidget extends StatefulWidget {
  @override
  _BottomNavigationTabWidgetState createState() =>
      _BottomNavigationTabWidgetState();
}

class _BottomNavigationTabWidgetState extends State<BottomNavigationTabWidget> {
  final List<Map<String, Object>> _pages = [
    {'page': Page1(), 'title': 'Category'},
    {'page': Page2(), 'title': 'Settings'}
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
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
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          backgroundColor: Colors.yellow,
          elevation: 15.0,
          selectedItemColor: Colors.pink,
          selectedFontSize: 15,
          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text('Category')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('Settings'))
          ]),
    );
  }
}
