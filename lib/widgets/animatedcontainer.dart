import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/opacityWidget.dart';

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double loginWidth = 40.0;
  double myHeight = 15.0;
  Color myColor = Colors.purpleAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OpacityWidget()),
                );
              })
        ],
      ),
      body: Center(
        child: PageView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text('Animate!'),
                  onPressed: () {
                    setState(() {
                      loginWidth = 250.0;
                      myColor = Colors.redAccent;
                      myHeight = 20.0;
                    });
                  },
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 4),
                  width: loginWidth,
                  height: myHeight,
                  color: myColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
