import 'package:flutter/material.dart';

import './transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = [
      Transaction(
        id: 't1',
        title: 'New shoes',
        amount: 69.99,
        date: DateTime.now(),
      ),
      Transaction(
        id: 't2',
        title: 'New shoes 2',
        amount: 16.53,
        date: DateTime.now(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crup Basic App',
        ),
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            color: Colors.blue,
            child: Container(
              width: double.infinity,
              child: Text(
                'Chart',
              ),
            ),
          ),
          Column(
            children: transactions.map((transaction) {
              return Card(
                child: Text(
                  transaction.title,
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
