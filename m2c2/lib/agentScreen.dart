import 'package:flutter/material.dart';

class AgentScreen extends StatefulWidget {
  @override
  _AgentScreenState createState() => _AgentScreenState();
}

class _AgentScreenState extends State<AgentScreen> {
  int _rank = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Agent Creation"),
      ),
      body: Container(
        child: Slider(
          inactiveColor: Colors.grey,
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
          },
        ),
      ),
    );
  }
}
