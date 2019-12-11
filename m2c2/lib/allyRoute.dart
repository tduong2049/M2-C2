import 'package:flutter/material.dart';
import 'package:m2c2/card.dart';

class AllyRoute extends StatefulWidget {
  final Agent agent;
  AllyRoute(this.agent);
  
  @override
  _AllyRouteState createState() => _AllyRouteState();
}

class _AllyRouteState extends State<AllyRoute> {
  @override
  Widget build(BuildContext context) {
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
                itemCount: widget.agent.equipment.length,
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${widget.agent.equipment[index].name}"),
                    subtitle:
                        Text("Bonus: ${widget.agent.equipment[index].bonus}"),
                    // Highlight the checkmark button green if the equipment was
                    // selected by the user.
                  );
                }, // itemBuilder
              ),
            )
          ],
        ));
  }
}
