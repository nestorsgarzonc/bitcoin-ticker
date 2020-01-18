import 'package:bitcoin_ticker/coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = currenciesList[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                '1 BTC = ? USD',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Container(
              height: 150.0,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 10.0),
              color: Colors.lightBlue,
              child: CupertinoPicker(
                itemExtent: 32,
                backgroundColor: Colors.lightBlue,
                onSelectedItemChanged: (selectedIndex) {
                  print(selectedIndex);
                },
                children: currenciesList.map<Text>((value) {
                  return Text(value, style: TextStyle(color: Colors.white));
                }).toList(),
              )),
        ],
      ),
    );
  }
}
/* DropdownButton<String>(
                value: selectedCurrency,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                onChanged: (String value) {
                  setState(() {
                    selectedCurrency = value;
                  });
                },
                items: currenciesList.map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList()), */
