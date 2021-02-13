import 'package:flutter/material.dart';
import 'package:flutter_nobitex_api/screen/trades.dart';
import 'pick_currency.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final tabs = [
    Center(
      child: Image.asset(
        'images/mainlogo.png',
        height: 90.0,
        width: 90.0,
      ),
    ),
    TradesScreen(),
    PickCurrency(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart_rounded),
            label: 'Trades',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Analyse',
          ),
        ],
        selectedItemColor: Colors.blue[800],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
