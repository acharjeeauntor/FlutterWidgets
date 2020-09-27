import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/fadeinimagewidget.dart';

import 'fadetransitionwidget.dart';

class SliverAppBarWidget extends StatefulWidget {
  @override
  _SliverAppBarWidgetState createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.purple,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("SliverAppBar Widget"),
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.next_week),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FadeInImageWidget()),
                    );
                  })
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              addDetails('one', 'This is one'),
              addDetails('Two', 'This is Two'),
              addDetails('Three', 'This is one'),
              addDetails('Four', 'This is one'),
              addDetails('Five', 'This is one'),
              addDetails('Six', 'This is one'),
              addDetails('Seven', 'This is one'),
              addDetails('Eight', 'This is one'),
              addDetails('nine', 'This is one'),
              addDetails('Ten', 'This is one'),
            ]),
          )
        ],
      ),
    );
  }
}

Widget addDetails(String name, String desc) {
  return ListTile(
    title: Text(name),
    subtitle: Text(desc),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}
