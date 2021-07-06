import 'package:flutter/material.dart';
import 'Navigator.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon List',
      home: Nav(),
      debugShowCheckedModeBanner: false,
    );
  }
}
