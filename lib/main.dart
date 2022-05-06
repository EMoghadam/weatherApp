import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'Locations.dart';

void main() {
  runApp(const weatherApp());
}

class weatherApp extends StatefulWidget {
  const weatherApp({Key? key}) : super(key: key);

  @override
  State<weatherApp> createState() => _weatherAppState();
}

class _weatherAppState extends State<weatherApp> {
  void getLocation() async {
    Locations locations = Locations();
    await locations.getCurrentLocation();
    print(locations.longitude);
    print(locations.latitude);
  }

  @override
  void initState() {
    super.initState();
    try {
      getLocation();
    } catch (e) {
      print("in try cath     $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: Container(),
        ),
      ),
    );
  }
}
