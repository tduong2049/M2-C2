import 'package:flutter/material.dart';

import 'package:m2c2/card.dart';
import 'affiliationRoute.dart';

class PowerRoute extends StatefulWidget {
  final Agent agent;
  PowerRoute(this.agent);

  @override
  _PowerRouteState createState() => _PowerRouteState();
}

class _PowerRouteState extends State<PowerRoute> {
  final power01 = Power(
    name: "Master Tactician",
    bonus: 2,
    rankRequirement: 2,
  );
  final power02 = Power(
    name: "Heightened Senses",
    bonus: 1,
    rankRequirement: 1,
  );
  final power03 = Power(
    name: "Super-Strength",
    bonus: 3,
    rankRequirement: 3,
  );
  final power04 = Power(
    name: "Martial Artist",
    bonus: 2,
    rankRequirement: 1,
  );
  final power05 = Power(
    name: "Super Spy",
    bonus: 1,
    rankRequirement: 1,
  );
  final power06 = Power(
    name: "Enhanced Agility",
    bonus: 2,
    rankRequirement: 2,
  );
  final power07 = Power(
    name: "Super Soldier",
    bonus: 1,
    rankRequirement: 2,
  );
  final power08 = Power(
    name: "Master Marksman",
    bonus: 2,
    rankRequirement: 1,
  );
  final power09 = Power(
    name: "Size Alteration",
    bonus: 1,
    rankRequirement: 3,
  );
  final power10 = Power(
    name: "Super-Intelligence",
    bonus: 2,
    rankRequirement: 3,
  );
  final power11 = Power(
    name: "Invulnerability",
    bonus: 3,
    rankRequirement: 4,
  );
  final power12 = Power(
    name: "Elemental Manipulation",
    bonus: 4,
    rankRequirement: 3,
  );
  final power13 = Power(
    name: "Super Speed",
    bonus: 2,
    rankRequirement: 2,
  );
  final power14 = Power(
    name: "Energy Blasts",
    bonus: 1,
    rankRequirement: 2,
  );
  final power15 = Power(
    name: "Supersonic Flight",
    bonus: 1,
    rankRequirement: 1,
  );

  @override
  Widget build(BuildContext context) {
    List<Power> _powers = [
      power01,
      power02,
      power03,
      power04,
      power05,
      power06,
      power07,
      power08,
      power09,
      power10,
      power11,
      power12,
      power13,
      power14,
      power15
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Power Selection"),
      ),
       body: Column(
        children: <Widget>[
          Container(
            height: 550,
            child: ListView.separated(
              itemCount: _powers.length,
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${_powers[index].name}"),
                  subtitle: Text("Bonus: ${_powers[index].bonus}"),
                  // Highlight the checkmark button green if the power was
                  // selected by the user.
                  trailing: (_powers[index].isSelected)
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.red,
                        )
                      : Icon(Icons.check_circle_outline),
                  onTap: () {
                    setState(() {
                      _powers[index].isSelected =
                          !_powers[index].isSelected;
                    });
                  },
                );
              }, // itemBuilder
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 40),
          ),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            splashColor: Colors.white,
            child: Text(
              "Add Affiliations",
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {
              widget.agent.powers.clear();

              for (Power item in _powers) {
                if (item.isSelected) {
                  widget.agent.powers.add(item);
                }
              }
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AffiliationRoute(widget.agent),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
