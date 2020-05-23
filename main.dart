import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(
            child: Text('Ask Arsh Anything'),
          ),
        ),
        body: magicball()
            ),
          ),
        );
}
class magicball extends StatefulWidget {
  @override
  _magicballState createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  int ResponseNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              print('I got pressed');
              setState(() {
                ResponseNumber = Random().nextInt(4) + 1;
              });
            },
            child: Image(
              image: AssetImage('images/ball$ResponseNumber.png'),
            ),
          ),
        ),
      ],
    );
  }
}

