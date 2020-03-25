import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: <Widget>[Head(), Cards()],
        ),
      ),
    ));
  }
}

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 50, 50, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'for ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'today',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/1.jpg'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Wrap(
        children: <Widget>[
          CardContainer(),
          CardContainer(),
          CardContainer(),
          CardContainer(),
          CardContainer(),
          CardContainer(),
          CardContainer(),
        ],
      ),
    );
  }
}

class CardContainer extends StatefulWidget {
  @override
  _CardContainerState createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 160,
      height: 200,
      child: Card(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 0.5,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 15),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'FingerPrint',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.fingerprint)
                  ],
                ),
              ),
              Text('HOLA'),
              Text('HOLA'),
            ],
          ),
        ),
      ),
    );
  }
}
