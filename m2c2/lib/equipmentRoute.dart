import 'package:flutter/material.dart';

import 'allyRoute.dart';
import 'card.dart';

class EquipmentRoute extends StatefulWidget {
  final Agent agent;
  EquipmentRoute(this.agent);

  @override
  _EquipmentRouteState createState() => _EquipmentRouteState();
}

class _EquipmentRouteState extends State<EquipmentRoute> {
  final headGear01 = Equipment(
    name: "Thor's Helmet",
    type: "Headgear",
    bonus: 3,
    goldValue: 400,
  );
  final headGear02 = Equipment(
    name: "Antman's Helmet",
    type: "Headgear",
    bonus: 1,
    goldValue: 200,
  );
  final headGear03 = Equipment(
    name: "Nick Fury's Eyepatch",
    type: "Headgear",
    bonus: 1,
    goldValue: 100,
  );
  final headGear04 = Equipment(
    name: "Loki's Helmet",
    type: "Headgear",
    bonus: 2,
    goldValue: 500,
  );
  final headGear05 = Equipment(
    name: "Black Bolt's Tuning Folk",
    type: "Headgear",
    bonus: 2,
    goldValue: 400,
  );

  final armor01 = Equipment(
    name: "Iron Man's Model 1 Armor",
    type: "Armor",
    bonus: 1,
    goldValue: 400,
  );
  final armor02 = Equipment(
    name: "Falcon's Wingsuit",
    type: "Armor",
    bonus: 2,
    goldValue: 300,
  );
  final armor03 = Equipment(
    name: "Symbiote Suit",
    type: "Armor",
    bonus: 2,
    goldValue: 300,
  );
  final armor04 = Equipment(
    name: "Doctor Octopus' Tentacle Suit",
    type: "Armor",
    bonus: 4,
    goldValue: 600,
  );
  final armor05 = Equipment(
    name: "Spiderman's Spidey Suit",
    type: "Armor",
    bonus: 2,
    goldValue: 400,
  );
  final armor06 = Equipment(
    name: "Iron Man's Model 51 Armor",
    type: "Armor",
    bonus: 5,
    goldValue: 700,
  );

  final oneHanded01 = Equipment(
    name: "Kraven's Spear",
    type: "One Handed",
    bonus: 2,
    goldValue: 400,
  );
  final oneHanded02 = Equipment(
    name: "Mjolnir",
    type: "One Handed",
    bonus: 2,
    goldValue: 400,
  );
  final oneHanded03 = Equipment(
    name: "Klaw's Sonic Blaster",
    type: "One Handed",
    bonus: 2,
    goldValue: 400,
  );
  final oneHanded04 = Equipment(
    name: "Iron Man's Repulsor",
    type: "One Handed",
    bonus: 2,
    goldValue: 300,
  );
  final oneHanded05 = Equipment(
    name: "War Machine's Wrist Rocket",
    type: "One Handed",
    bonus: 2,
    goldValue: 200,
  );
  final oneHanded06 = Equipment(
    name: "Captain America's Shield",
    type: "One Handed",
    bonus: 3,
    goldValue: 500,
  );
  final oneHanded07 = Equipment(
    name: "SHIELD Pistol",
    type: "One Handed",
    bonus: 1,
    goldValue: 100,
  );
  final oneHanded08 = Equipment(
    name: "Daredevil's Billy Club",
    type: "One Handed",
    bonus: 1,
    goldValue: 200,
  );
  final oneHanded09 = Equipment(
    name: "Widow's Bite",
    type: "One Handed",
    bonus: 2,
    goldValue: 200,
  );

  final twoHanded01 = Equipment(
    name: "Mandarin's Rings",
    type: "Two Handed",
    bonus: 2,
    goldValue: 500,
  );
  final twoHanded02 = Equipment(
    name: "Spiderman's Web Shooters",
    type: "Two Handed",
    bonus: 2,
    goldValue: 400,
  );
  final twoHanded03 = Equipment(
    name: "Absorbing Man's Ball and Chain",
    type: "Two Handed",
    bonus: 4,
    goldValue: 500,
  );
  final twoHanded04 = Equipment(
    name: "Hawkeye's Bow",
    type: "Two Handed",
    bonus: 3,
    goldValue: 400,
  );

  final footGear01 = Equipment(
    name: "Seven-League's Boots",
    type: "Footgear",
    bonus: 2,
    goldValue: 300,
  );
  final footGear02 = Equipment(
    name: "Namor's Ankle Wings",
    type: "Footgear",
    bonus: 1,
    goldValue: 100,
  );
  final footGear03 = Equipment(
    name: "Green Goblin's Goblin Glider",
    type: "Footgear",
    bonus: 2,
    goldValue: 300,
  );

  @override
  Widget build(BuildContext context) {
    List<Equipment> _equipment = [
      headGear01,
      headGear02,
      headGear03,
      headGear04,
      headGear05,
      armor01,
      armor02,
      armor03,
      armor04,
      armor05,
      armor06,
      oneHanded01,
      oneHanded02,
      oneHanded03,
      oneHanded04,
      oneHanded05,
      oneHanded06,
      oneHanded07,
      oneHanded08,
      oneHanded09,
      twoHanded01,
      twoHanded02,
      twoHanded03,
      twoHanded04,
      footGear01,
      footGear02,
      footGear03
    ];

    _equipment.sort((a, b) => a.name.compareTo(b.name));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Equipment Selection"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 550,
            child: ListView.separated(
              itemCount: _equipment.length,
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${_equipment[index].name}"),
                  subtitle: Text("Bonus: ${_equipment[index].bonus}"),
                  // Highlight the checkmark button green if the equipment was
                  // selected by the user.
                  trailing: (_equipment[index].isSelected)
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.red,
                        )
                      : Icon(Icons.check_circle_outline),
                  onTap: () {
                    setState(() {
                      _equipment[index].isSelected =
                          !_equipment[index].isSelected;
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
                "Add Allies",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                widget.agent.equipment.clear();

                for (Equipment item in _equipment) {
                  if (item.isSelected) {
                    widget.agent.equipment.add(item);
                  }
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllyRoute(widget.agent)),
                );
              },
            ),
        ],
      ),
    );
  }
}
