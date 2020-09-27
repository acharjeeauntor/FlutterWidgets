import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/datatablewidget.dart';
import 'package:flutterweeklywidget/widgets/pages/page2.dart';

class HeroAndToolTipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero & Tooltips Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataTableWidget()),
                );
              })
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page2()),
            );
          },
          child: Container(
              height: 80,
              width: 80,
              child: Tooltip(
                message: "Press To see the work of Hero",
                child: Hero(
                    tag: 'myHeroTag',
                    child: Image.network(
                        "https://images.unsplash.com/photo-1561628079-0fd05736be66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")),
              )),
        ),
      ),
    );
  }
}
