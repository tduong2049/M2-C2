import 'package:flutter/material.dart';

import 'agentRoute.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Munchkin Marvel Combat Calculator',
      initialRoute: '/',
      routes: {
        '/': (context) => M2C2(),
        '/agentRoute': (context) => AgentRoute(),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                padding: EdgeInsetsDirectional.only(top: 50),
              ),
              // Button that navigates to the Agent Creation screen
              // when pressed.
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
