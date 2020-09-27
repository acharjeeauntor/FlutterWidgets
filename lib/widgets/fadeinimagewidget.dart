import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/clipovalandcliprrectwidget.dart';

class FadeInImageWidget extends StatefulWidget {
  @override
  _FadeInImageWidgetState createState() => _FadeInImageWidgetState();
}

class _FadeInImageWidgetState extends State<FadeInImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade In Image Widget"),
        actions: [
          IconButton(
            icon: Icon(Icons.next_week),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ClipRRectWidget()),
              );
            },
            tooltip: "Go next",
          )
        ],
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/images/loading.gif',
          image:
              "https://images.unsplash.com/photo-1561628079-0fd05736be66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
          fit: BoxFit.cover,
          fadeInDuration: const Duration(seconds: 6),
          fadeInCurve: Curves.easeInCubic,
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
