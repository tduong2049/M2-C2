import 'package:flutter/material.dart';

import 'card.dart';

class EquipmentRoute extends StatefulWidget {
  Agent agent;
  EquipmentRoute(this.agent);

  @override
  _EquipmentRouteState createState() => _EquipmentRouteState();
}

class _EquipmentRouteState extends State<EquipmentRoute> {
  Equipment headGear01 = Equipment(name: "Thor's Helmet", type: "headgear", bonus: 3, goldValue: 400);
  Equipment headGear02 = Equipment(name: "Antman's Helmet", type: "headgear", bonus: 1, goldValue: 200);
  Equipment headGear03 = Equipment(name: "Nick Fury's Eyepatch", type: "headgear", bonus: 1, goldValue: 100);
  Equipment headGear04 = Equipment(name: "Loki's Helmet", type: "headgear", bonus: 2, goldValue: 500);
  Equipment headGear05 = Equipment(name: "Black Bolt's Tuning Folk", type: "headgear", bonus: 2, goldValue: 400);

  Equipment armor01 = Equipment(name: "Iron Man Model One Armor", type: "armor", bonus: 1, goldValue: 400);
  Equipment armor02 = Equipment(name: "", type: "", bonus: 1, goldValue: 400);
  Equipment armor03 = Equipment(name: "", type: "", bonus: 1, goldValue: 400);
  Equipment armor04 = Equipment(name: "", type: "", bonus: 1, goldValue: 400);
  Equipment armor05 = Equipment(name: "", type: "", bonus: 1, goldValue: 400);
  Equipment armor06 = Equipment(name: "", type: "", bonus: 1, goldValue: 400);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Equipment Selection"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("${widget.agent.name}"),
            Text("${widget.agent.sex}"),
            Text(widget.agent.rank.toString()),
          ],
        ),
      ),
    );
  }
}