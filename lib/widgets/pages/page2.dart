import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Tooltip(
            message: "This is a Hero Widget",
            child: Hero(
                tag: 'myHeroTag',
                child: Image.network(
                    "https://images.unsplash.com/photo-1561628079-0fd05736be66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")),
          ),
        ),
      ),
    );
  }
}
