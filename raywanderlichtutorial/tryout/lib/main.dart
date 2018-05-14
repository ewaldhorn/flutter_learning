import 'dart:convert';
import 'package:http/http.dart' as http;
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
  var _members = [];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  _loadData() async {
    String dataURL = "https://api.github.com/orgs/raywenderlich/members";
    http.Response response = await http.get(dataURL);
    setState(() {
      _members = JSON.decode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();

    _loadData();
  }

  Widget _buildRow(int i) {
    return new ListTile(
        title: new Text("${_members[i]["login"]}", style: _biggerFont));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(Strings.appTitle),
      ),
      body: new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _members.length,
        itemBuilder: (BuildContext context, int position) {
          return _buildRow(position);
        },
      ),
    );
  }
}
