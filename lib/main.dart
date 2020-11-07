import 'package:flutter/material.dart';

import 'rey/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mohamed ali app',
      theme: ThemeData(
        primaryColor: Colors.grey[900],
      ),
      home: HomePage(),
    );
  }
}
