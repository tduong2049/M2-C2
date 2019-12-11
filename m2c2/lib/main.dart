import 'package:flutter/material.dart';

import 'agentScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Munchkin Marvel Combat Calculator',
      initialRoute: '/',
      routes: {
        '/': (context) => M2C2(),
        '/agentRoute': (context) => AgentScreen(),
      },
    ),
  );
}

class M2C2 extends StatefulWidget {
  @override
  _M2C2State createState() => _M2C2State();
}

class _M2C2State extends State<M2C2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("M2C2"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 160, 0, 0),
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/marvel_logo.png'),
              ),
              Text(
                "Munchkin Marvel Combat Calculator",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 60),
              ),
              RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                splashColor: Colors.white,
                child: Text(
                  "Create an Agent",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/agentRoute');
                },
              )
            ],
          ),
        ),
      ),
    );
  } // end build widget
} // end M2C2 State
