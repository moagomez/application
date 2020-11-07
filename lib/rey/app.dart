import 'package:flutter/material.dart';

import 'body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text('Mohamed ali did it'),
      ),
      //MainBody
      body: ProgramBody(),
    );
  }
}
