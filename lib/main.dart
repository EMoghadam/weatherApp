import 'package:flutter/material.dart';

void main() {
  runApp(const weatherApp());
}

class weatherApp extends StatefulWidget {
  const weatherApp({Key? key}) : super(key: key);

  @override
  State<weatherApp> createState() => _weatherAppState();
}

class _weatherAppState extends State<weatherApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
