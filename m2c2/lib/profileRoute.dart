import 'package:flutter/material.dart';

import 'card.dart';
import 'equipmentFunctions.dart';

class ProfileRoute extends StatefulWidget {
  final Agent agent;
  ProfileRoute(this.agent);

  @override
  _ProfileRouteState createState() => _ProfileRouteState();
}

class _ProfileRouteState extends State<ProfileRoute> {
  String _affiliationText = "";
  String _combatStrength = "XX";

  @override
  Widget build(BuildContext context) {
    if (widget.agent.affiliations.length == 1 &&
        widget.agent.affiliations[0].hasDisadvantages) {
      _affiliationText =
          "Affiliation: ${widget.agent.affiliations[0].name} (w/ Disadvantages)";
    } else if (widget.agent.affiliations.length == 1 &&
        !widget.agent.affiliations[0].hasDisadvantages) {
      _affiliationText =
          "Affiliation: ${widget.agent.affiliations[0].name} (w/o Disadvantages)";
    } else if (widget.agent.affiliations.length == 2) {
      _affiliationText =
          "Affiliations: ${widget.agent.affiliations[0].name} / ${widget.agent.affiliations[1].name}";
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Profile"),
      ),
      body: Column(
        children: <Widget>[
           Padding(
            padding: EdgeInsetsDirectional.only(top: 18),
          ),
          Text("Class: ${widget.agent.name}"),
          Text("Sex: ${widget.agent.sex}"),
          Text("Rank: ${widget.agent.rank}"),
          Text(_affiliationText),
           Padding(
            padding: EdgeInsetsDirectional.only(top: 20),
          ),
          Text(
            "Equipment",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 130,
            child: ListView.separated(
              itemCount: widget.agent.equipment.length,
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (context, index) {
                return ListTile(
                  dense: true,
                  title: Text("${widget.agent.equipment[index].name}"),
                  subtitle:
                      Text("Bonus: ${widget.agent.equipment[index].bonus}"),
                );
              }, // itemBuilder
            ),
          ),
           Padding(
            padding: EdgeInsetsDirectional.only(top: 20),
          ),
          Text(
            "Allies",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 130,
            child: ListView.separated(
              itemCount: widget.agent.allies.length,
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (context, index) {
                return ListTile(
                  dense: true,
                  title: Text("${widget.agent.allies[index].name}"),
                  subtitle: Text("Bonus: ${widget.agent.allies[index].bonus}"),
                );
              }, // itemBuilder
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 20),
          ),
          Text(
            "Powers",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 130,
            child: ListView.separated(
              itemCount: widget.agent.powers.length,
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (context, index) {
                return ListTile(
                  dense: true,
                  title: Text("${widget.agent.powers[index].name}"),
                  subtitle: Text("Bonus: ${widget.agent.powers[index].bonus}"),
                );
              }, // itemBuilder
            ),
          ),
          Text(
            _combatStrength,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2, 1),
                  color: Colors.black,
                )
              ],
            ),
          ),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            splashColor: Colors.white,
            child: Text(
              "Calculate Strength",
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {
              setState(() {
                widget.agent.strength = widget.agent.rank;

                for (Equipment equipment in widget.agent.equipment) {
                  switch (equipment.name) {
                    case "Thor's Helmet":
                      applyThorsHelmet(widget.agent);
                      break;
                    case "Ant-Man's Helmet":
                      applyAntmansHelmet(widget.agent);
                      break;
                    case "Nick Fury's Eyepatch":
                      applyNickFurysEyepatch(widget.agent);
                      break;
                    case "Loki's Helmet":
                      applyLokisHelmet(widget.agent);
                      break;
                    case "Black Bolt's Tuning Folk":
                      applyBlackBoltsTuningFolk(widget.agent);
                      break;
                    case "Iron Man's Model 1 Armor":
                      applyIronMansModelOneArmor(widget.agent);
                      break;
                    case "Falcon's Wingsuit":
                      applyFalconsWingsuit(widget.agent);
                      break;
                    case "Symbiote Suit":
                      applySymbioteSuit(widget.agent);
                      break;
                    case "Doctor Octopus' Tentacle Suit":
                      applyDoctorOctopusTentacleSuit(widget.agent);
                      break;
                    case "Spiderman's Spidey Suit":
                      applySpiderManSpideySuit(widget.agent);
                      break;
                    case "Iron Man's Model 51 Armor":
                      applySpiderManSpideySuit(widget.agent);
                      break;
                    case "Kraven's Spear":
                      applyKravensSpear(widget.agent);
                      break;
                    case "Mjolnir":
                      applyMjolnir(widget.agent);
                      break;
                    case "Klaw's Sonic Blaster":
                      applyKlawsSonicBlaster(widget.agent);
                      break;
                    case "Iron Man's Repulsor":
                      applyIronMansRepulsor(widget.agent);
                      break;
                    case "War Machine's Wrist Rocket":
                      applyWarMachinesWristRockets(widget.agent);
                      break;
                    case "Captain America's Shield":
                      applyCaptainAmericasShield(widget.agent);
                      break;
                    case "S.H.I.E.L.D. Pistol":
                      applyShieldPistol(widget.agent);
                      break;
                    case "Daredevil's Billy Club":
                      applyDaredevilsBillyClubs(widget.agent);
                      break;
                    case "Widow's Bite":
                      applyWidowsBite(widget.agent);
                      break;
                    case "Mandarin's Rings":
                      applyMandarinsRings(widget.agent);
                      break;
                    case "Spiderman's Web Shooters":
                      applySpidermanWebShooters(widget.agent);
                      break;
                    case "Absorbing Man's Ball and Chain":
                      applyAbsorbingMansBallAndChain(widget.agent);
                      break;
                    case "Hawkeye's Bow":
                      applyHawkeyesBow(widget.agent);
                      break;
                    case "Seven-League's Boots":
                      applySevenLeagueBoots(widget.agent);
                      break;
                    case "Namor's Ankle Wings":
                      applyNamorsAnkleWings(widget.agent);
                      break;
                    case "Green Goblin's Goblin Glider":
                      applyGreenGoblinsGoblinGlider(widget.agent);
                      break;
                  } // end switch
                } // end for equipment

                _combatStrength = widget.agent.strength.toString();
              });
            },
          ),
        ],
      ),
    );
  }
}
