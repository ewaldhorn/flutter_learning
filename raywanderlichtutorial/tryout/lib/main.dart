import 'package:flutter/material.dart';

/*
 * Loosely following the Ray Wenderlich tutorial at : https://www.raywenderlich.com/188257/getting-started-with-flutter
 */

void main() => runApp(new LearningFlutterApp());

class LearningFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Learning',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Learning Flutter'),
        ),
        body: new Center(
          child: new Text('Flutter Sample Text'),
        ),
      ),
    );
  }
}