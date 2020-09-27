import 'package:flutter/material.dart';
import 'package:flutterweeklywidget/widgets/transformwidget.dart';

class FittedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransformWidget()),
                );
              })
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 10),

            // Without FittedBox

            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.green)),
              child: Text('This is explanation'),
              width: 80,
              height: 20,
            ),

            SizedBox(
              height: 12,
            ),

            // With FittedBox

            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.green),
              ),
              child: FittedBox(child: Text('This is explanation')),
              width: 80,
              height: 20,
            ),

            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
