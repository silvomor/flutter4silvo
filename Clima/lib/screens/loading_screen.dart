import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLoction() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
  }

  @override
  void initState() {
    super.initState();
    getLoction();
  }

  @override
  Widget build(BuildContext context) {
    print('Build method called');
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            setState(() {
              getLoction();
            });
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
