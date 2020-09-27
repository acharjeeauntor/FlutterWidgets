import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/tabbarAndDrawerwidget.dart';

class ImageWidget extends StatefulWidget {
  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TabBarWidget()),
                );
              })
        ],
      ),
      body: Center(
        child: Image.network(
          "https://images.unsplash.com/photo-1590935216299-bb81bf542066?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
          loadingBuilder: (context, child, progress) {
            return progress == null
                ? child
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LinearProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}
