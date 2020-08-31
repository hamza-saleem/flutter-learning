import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome!',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'PTSerif-Regular',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: Center(
        // child: Text("Welcome!"),
        child: Image(image: AssetImage('assets/pic1.jpg')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.green[700],
      ),
    );
  }
}
