import 'package:flutter/material.dart';

import 'card.dart';

class AffiliationRoute extends StatefulWidget {
  final Agent agent;
  AffiliationRoute(this.agent);
  @override
  _AffiliationRouteState createState() => _AffiliationRouteState();
}

class _AffiliationRouteState extends State<AffiliationRoute> {
  String _affiliationOneLabel = "Affiliation";
  String _affiliationOneSelection = "";
  String _affiliationTwoSelection = "";
  bool _teamUpValue = false;

  List<String> _affiliationNames = [
    "",
    "Avengers",
    "Inhumans",
    "Spider-Friends",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Affiliation Selection"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _affiliationOneLabel,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButton(
              value: _affiliationOneSelection,
              onChanged: (String newAffiliation) {
                setState(() {
                  _affiliationOneSelection = newAffiliation;
                });
              }, // onChanged
              items: _affiliationNames.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SwitchListTile(
              title: Text(
                "Use Team-Up Card",
                style: TextStyle(fontSize: 18),
              ),
              value: _teamUpValue,
              activeColor: Colors.red,
              onChanged: (bool value) {
                setState(() {
                  _teamUpValue = value;
                  if (_teamUpValue == true) {
                    _affiliationOneLabel = "Affiliation One";
                  } else {
                    _affiliationOneLabel = "Affiliation";
                    _affiliationTwoSelection = "";
                  }
                });
              },
            ),
            Visibility(
              visible: _teamUpValue,
              child: Text(
                "Affiliation Two",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Visibility(
              visible: _teamUpValue,
              child: DropdownButton(
                value: _affiliationTwoSelection,
                items: _affiliationNames.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newAffiliation) {
                  setState(() {
                    _affiliationTwoSelection = newAffiliation;
                  });
                }, // onChanged
              ),
            ),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              splashColor: Colors.white,
              child: Text(
                "Add Allies",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                widget.agent.affiliations.clear();

                if (_affiliationOneSelection != "") {
                  Affiliation affiliation01 =
                      Affiliation(name: _affiliationOneSelection);
                  widget.agent.affiliations.add(affiliation01);
                }

                if (_affiliationTwoSelection != "") {
                  Affiliation affiliation02 =
                      Affiliation(name: _affiliationTwoSelection);
                  widget.agent.affiliations.add(affiliation02);
                }

                if (_teamUpValue && (widget.agent.affiliations.length == 1)) {
                  widget.agent.affiliations[0].hasDisadvantages = false;
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileRoute(widget.agent),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
