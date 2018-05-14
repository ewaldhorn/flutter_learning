import 'package:flutter/material.dart';
import 'strings.dart';

/*
 * Loosely following the Ray Wenderlich tutorial at : https://www.raywenderlich.com/188257/getting-started-with-flutter
 */

void main() => runApp(new LearningFlutterApp());

class LearningFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: Strings.appTitle,
      home: new MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  createState() => new MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(Strings.appTitle),
      ),
      body: new Text('This is my widget!'),
    );
  }
}
