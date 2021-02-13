import 'package:flutter/material.dart';
import 'package:flutter_nobitex_api/screen/home.dart';
import 'package:flutter_nobitex_api/screen/pick_currency.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
