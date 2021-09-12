import 'package:flutter/material.dart';
import 'package:flutter_application_1/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Transaction> transactions = [
    Transaction(id: 't1', title: 'shoe', amount: 99.99, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('device area'),
                elevation: 5,
              ),
            ),
            Container(
              width: 100,
              child: Card(
                color: Colors.red,
                elevation: 5,
                child: Text('hy yaa'),
              ),
            ),
          ]),
    );
  }
}
