import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'iOS Design',
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue, // Warna utama untuk OS iOS dark theme
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino App'),
      ),
      child: Center(
        child: Text(
          'This is CupertinoApp',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
