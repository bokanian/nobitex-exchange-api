import 'package:flutter/material.dart';
import 'package:flutter_nobitex_api/screen/trades.dart';

class PickCurrency extends StatefulWidget {
  @override
  _PickCurrencyState createState() => _PickCurrencyState();
}

class _PickCurrencyState extends State<PickCurrency> {
  String selectCurrency = 'USDTIRT';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('get data'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                hint: Text(selectCurrency),
                focusColor: Colors.blue,
                items: <String>[
                  'USDTIRT',
                  'BTCIRT',
                  'ETHIRT',
                  'LTCIRT',
                  'XRPIRT',
                  'BCHIRT',
                  'BNBIRT',
                ].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectCurrency = value;
                  });
                  print(selectCurrency);
                },
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        TradesScreen(selectCurrency: selectCurrency))),
                child: Text('post'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
