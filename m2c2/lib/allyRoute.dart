import 'package:flutter/material.dart';

import 'package:m2c2/card.dart';
import 'powerRoute.dart';

class AllyRoute extends StatefulWidget {
  final Agent agent;
  AllyRoute(this.agent);

  @override
  _AllyRouteState createState() => _AllyRouteState();
}

class _AllyRouteState extends State<AllyRoute> {
  final ally01 = Ally(
    name: "Falcon",
    bonus: 1,
  );
  final ally02 = Ally(
    name: "Iron Man",
    bonus: 2,
  );
  final ally03 = Ally(
    name: "Hawkeye",
    bonus: 1,
  );
  final ally04 = Ally(
    name: "Thor",
    bonus: 4,
  );
  final ally05 = Ally(
    name: "Captain Marvel",
    bonus: 2,
  );
  final ally06 = Ally(
    name: "Spiderman",
    bonus: 2,
  );
  final ally07 = Ally(
    name: "Black Panther",
    bonus: 1,
  );
  final ally08 = Ally(
    name: "Daredevil",
    bonus: 1,
  );
  final ally09 = Ally(
    name: "Black Widow",
    bonus: 1,
  );
  final ally10 = Ally(
    name: "Hulk",
    bonus: 5,
  );
  final ally11 = Ally(
    name: "Nick Fury",
    bonus: 1,
  );
  final ally12 = Ally(
    name: "Captain America",
    bonus: 2,
  );
  final ally13 = Ally(
    name: "Ant-Man",
    bonus: 1,
  );
  final ally14 = Ally(
    name: "She-Hulk",
    bonus: 1,
  );
  final ally15 = Ally(
    name: "The Vision",
    bonus: 2,
  );

  @override
  Widget build(BuildContext context) {
    List<Ally> _allies = [
      ally01,
      ally02,
      ally03,
      ally04,
      ally05,
      ally06,
      ally07,
      ally08,
      ally09,
      ally10,
      ally11,
      ally12,
      ally13,
      ally14,
      ally15
    ];

    _allies.sort((a, b) => a.name.compareTo(b.name));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Ally Selection"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 550,
            child: ListView.separated(
              itemCount: _allies.length,
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${_allies[index].name}"),
                  subtitle: Text("Bonus: ${_allies[index].bonus}"),
                  // Highlight the checkmark button green if the ally was
                  // selected by the user.
                  trailing: (_allies[index].isSelected)
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.red,
                        )
                      : Icon(Icons.check_circle_outline),
                  onTap: () {
                    setState(() {
                      _allies[index].isSelected = !_allies[index].isSelected;
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
              "Add Powers",
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {
              widget.agent.allies.clear();

              for (Ally item in _allies) {
                if (item.isSelected) {
                  widget.agent.allies.add(item);
                }
              }
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PowerRoute(widget.agent),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
