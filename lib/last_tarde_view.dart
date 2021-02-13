import 'package:flutter/material.dart';

class LastTradeView extends StatelessWidget {
  final String time;
  final String price;
  final String volume;
  final String value;
  final Function onTab;

  LastTradeView({this.time, this.price, this.volume, this.value, this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0.5),
        color: Colors.blue.shade200,
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(value),
            Text(volume),
            Text(price),
            Text(time),
          ],
        ),
      ),
    );
  }
}
