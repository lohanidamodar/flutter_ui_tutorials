import 'package:flutter/material.dart';
import 'package:flutter_ui_tutorials/date_time_picker.dart';
import 'package:flutter_ui_tutorials/sliver_app_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Tutorials',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        "sliver_app_bar": (_) => SliverAppBarPage(),
        "date_time_picker": (_) => DateTimePickerPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI tutorials'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Sliver app bar"),
            onTap: () => Navigator.pushNamed(context, 'sliver_app_bar'),
          ),
          ListTile(
            title: Text("Simple date time picker"),
            onTap: () => Navigator.pushNamed(context, 'date_time_picker'),
          ),
        ],
      ),
    );
  }
}
