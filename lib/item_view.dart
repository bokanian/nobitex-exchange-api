import 'package:flutter/material.dart';

class LastTradeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          color: Colors.blue.shade200,
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Value'),
              Text('Volume'),
              Text('Price'),
              Text('Time'),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          color: Colors.blue.shade200,
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Value'),
              Text('Volume'),
              Text('Price'),
              Text('Time'),
            ],
          ),
        ),
        new DropdownButton<String>(
          hint: Text('chose currency'),
          focusColor: Colors.blue,
          items: <String>['A', 'B', 'C', 'D'].map((String value) {
            return new DropdownMenuItem<String>(
              value: value,
              child: new Text(value),
            );
          }).toList(),
          onChanged: (va) {
            print(va);
          },
        )
      ],
    );
  }
}
