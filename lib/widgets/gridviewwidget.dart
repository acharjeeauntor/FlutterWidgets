import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottomnavigationtabwidget.dart';

class GridViewWidget extends StatefulWidget {
  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  List data = ['A', 'B', 'C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BottomNavigationTabWidget()),
                );
              })
        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemCount: data.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: GridTile(
                  header: Text("Header"),
                  footer: GridTileBar(
                    backgroundColor: Colors.black54,
                    title: Center(
                      child: Text("Footer"),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.favorite), onPressed: () {}),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.purple,
                      child: Center(
                        child: Text(data[index]),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
