import 'package:flutter/material.dart';

import 'card.dart';
import 'equipmentRoute.dart';

class AgentRoute extends StatefulWidget {
  @override
  _AgentRouteState createState() => _AgentRouteState();
}

class _AgentRouteState extends State<AgentRoute> {
  int _rank = 1;
  String _sex = "Male";
  String _class = "Espionage Agent";

  List<String> classes = [
    "Espionage Agent",
    "Operations Agent",
    "Recon Agent",
    "Recruiting Agent",
    "Tactical Agent",
    "Tech Agent"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Agent Setup"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Select an Agent Class
            Text(
              "Class",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButton(
              value: _class,
              onChanged: (String newClass) {
                setState(() {
                  _class = newClass;
                });
              }, // onChanged
              items: classes.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 20),
            ),
            // Select the Agent's sex
            Text(
              "Sex",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  activeColor: Colors.red,
                  value: "Male",
                  groupValue: _sex,
                  onChanged: (String newSex) {
                    setState(() {
                      _sex = newSex;
                    });
                  },
                ),
                Text("Male"),
                Radio(
                  activeColor: Colors.red,
                  value: "Female",
                  groupValue: _sex,
                  onChanged: (String newSex) {
                    setState(() {
                      _sex = newSex;
                    });
                  },
                ),
                Text("Female"),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 20),
            ),
            // Select the Agent's rank
            Text(
              "Rank",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                  inactiveColor: Colors.red[200],
                  activeColor: Colors.red,
                  value: _rank.toDouble(),
                  min: 1,
                  max: 9,
                  divisions: 9,
                  label: '$_rank',
                  onChanged: (double newRank) {
                    setState(() {
                      _rank = newRank.round();
                    });
                  }, //end onChanged
                ),
                Text(
                  _rank.toString(),
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 60),
            ),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              splashColor: Colors.white,
              child: Text(
                "Add Equipment",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Agent _agent = new Agent(name: _class, sex: _sex, rank: _rank);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EquipmentRoute(_agent)),
                );
              },
            ),
          ],
        ),
      ),
    );
  } // end build
} // end state
