import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.brown[50],
          appBar: AppBar(
            title: Center(
              child: Text("Angry Schrodinger's cat"),
            ),
            backgroundColor: Colors.brown[700],
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/cat.png'),
            ),
          )),
    ),
  );
}
