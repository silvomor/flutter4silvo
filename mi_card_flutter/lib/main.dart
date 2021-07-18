import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 125.0,
              backgroundImage: AssetImage('images/jin.jpg'),
            ),
            Text(
              'Silvomor',
              style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                  letterSpacing: 2.5,
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'SourceSansPro'),
            ),
            SizedBox(
              width: 200.0,
              height: 20.0,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    "+911 12345 6789",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: "SourceSansPro",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  "silvomor@gmail.com",
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: "SourceSansPro",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
