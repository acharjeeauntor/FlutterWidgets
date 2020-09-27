import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/gridviewwidget.dart';

class CheckBoxListTileWidget extends StatefulWidget {
  @override
  _CheckBoxListTileWidgetState createState() => _CheckBoxListTileWidgetState();
}

class _CheckBoxListTileWidgetState extends State<CheckBoxListTileWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBoxListTile Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridViewWidget()),
                );
              })
        ],
      ),
      body: Center(
        child: CheckboxListTile(
            title: Text("Check!"),
            activeColor: Colors.green,
            checkColor: Colors.white,
            secondary: Icon(Icons.ac_unit),
            value: _isChecked,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (bool value) {
              setState(() {
                _isChecked = value;
                print(value);
              });
            }),
      ),
    );
  }
}
