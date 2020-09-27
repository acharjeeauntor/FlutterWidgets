import 'package:flutter/material.dart';

import 'alertdialogwidget.dart';

class DataTableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table Widget"),
        actions: [
          IconButton(
              icon: Icon(Icons.next_week),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlertDialogWidget()),
                );
              })
        ],
      ),
      body: Center(
        child: DataTable(columns: [
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Age")),
        ], rows: [
          DataRow(cells: [
            DataCell(Icon(Icons.insert_emoticon)),
            DataCell(Text("21"))
          ]),
          DataRow(cells: [DataCell(Text("Auntor")), DataCell(Text("21"))]),
          DataRow(
              selected: true,
              cells: [DataCell(Text("Ontu")), DataCell(Text("25"))]),
        ]),
      ),
    );
  }
}
