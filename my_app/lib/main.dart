import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Welcome"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('click'),
        ),
      ),
    ));
