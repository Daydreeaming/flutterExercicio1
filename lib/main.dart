import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(50),
              child: Column(
                children: [
                  Retangle(),
                  Retangle(),
                  Retangle(),
                ]
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MiniSquare(
                  cor: Colors.green
                ),
                MiniSquare(
                  cor: Colors.yellow
                ),
                MiniSquare(
                  cor: Colors.red, 
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}

class Retangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30),
      color: Colors.white,
      height: 120,
    );
  }
}

class MiniSquare extends StatelessWidget {
  final Color cor;

  MiniSquare({Key key, this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: cor,      
    );
  }
}