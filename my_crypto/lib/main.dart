import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blueGrey[200],
          appBar: AppBar(
            title: Text('I have Crypto', textAlign: TextAlign.center),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/ether.png'),
            ),
          )),
    ),
  );
}
