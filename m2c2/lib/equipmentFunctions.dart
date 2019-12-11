import 'package:m2c2/card.dart';

void applyThorsHelmet(Agent agent) {
  agent.strength += 3;
}

void applyAntmansHelmet(Agent agent) {
  agent.strength += 1;
  if (agent.rank <= 3) {
    agent.strength += 2;
  }
}

void applyNickFurysEyepatch(Agent agent) {
  agent.strength += 1;
}

void applyLokisHelmet(Agent agent) {
  agent.strength += 2;
}

void applyBlackBoltsTuningFolk(Agent agent) {
  agent.strength += 2;

  bool foundInhumans = false;

  for (Affiliation item in agent.affiliations) {
    if (item.name == "Inhumans") {
      foundInhumans = true;
    }
  }

  if (foundInhumans) {
    agent.strength += 2;
  }
}

void applyIronMansModelOneArmor(Agent agent) {
  agent.strength += 1;
}

void applyFalconsWingsuit(Agent agent) {
  agent.strength += 2;
}

void applyDoctorOctopusTentacleSuit(Agent agent) {
  agent.strength += 4;
}

void applySymbioteSuit(Agent agent) {
  agent.strength += 2;
}

void applySpiderManSpideySuit(Agent agent) {
  agent.strength += 2;

  bool foundSpiderFriends = false;

  for (Affiliation item in agent.affiliations) {
    if (item.name == "Spider-Friends") {
      foundSpiderFriends = true;
    }
  }

  if (foundSpiderFriends) {
    agent.strength += 2;
  }
}

void applyIronMansModelFiftyOneArmor(Agent agent) {
  agent.strength += 5;
}

void applyKravensSpear(Agent agent) {
  agent.strength += 2;
}

void applyMjolnir(Agent agent) {
  agent.strength += 2;

  bool foundThor = false;

  for (Ally item in agent.allies) {
    if (item.name == "Thor") {
      foundThor = true;
    }
  }

  if (foundThor) {
    agent.strength += 4;
  }
}

void applyKlawsSonicBlaster(Agent agent) {
  agent.strength += 2;
}

void applyIronMansRepulsor(Agent agent) {
  agent.strength += 2;

  bool hasIronManAdvantage = false;

  for (Ally item in agent.allies) {
    if (item.name == "Iron Man") {
      hasIronManAdvantage = true;
    }
  }

  for (Equipment item in agent.equipment) {
    if (item.name == "Iron Man's Model 1 Armor" || item.name == "Iron Man's Model 51 Armor") {
      hasIronManAdvantage = true;
    }
  }

  if (hasIronManAdvantage) {
    agent.strength += 2;
  }
}

void applyWarMachinesWristRockets(Agent agent){
  agent.strength += 2;
}

void applyCaptainAmericasShield(Agent agent){
  agent.strength += 3;
}

void applyShieldPistol(Agent agent){
  agent.strength += 1;

  if (agent.affiliations.isEmpty) {
    agent.strength += 1;
  }
}

void applyDaredevilsBillyClubs(Agent agent){
  agent.strength += 1;
}

void applyWidowsBite(Agent agent){
  agent.strength += 2;

  if (agent.sex == "Female") {
    agent.strength += 2;
  }
}

void applyMandarinsRings(Agent agent){
  agent.strength += 2;
}

void applySpidermanWebShooters(Agent agent){
  agent.strength += 2;

  bool foundSpiderFriends = false;

  for (Affiliation item in agent.affiliations) {
    if (item.name == "Spider-Friends") {
      foundSpiderFriends = true;
    }
  }

  if (foundSpiderFriends) {
    agent.strength += 2;
  }
}

void applyAbsorbingMansBallAndChain(Agent agent){
  agent.strength += 4;
}

void applyHawkeyesBow(Agent agent){
  agent.strength += 3;

  bool foundAvengers = false;

  for (Affiliation item in agent.affiliations) {
    if (item.name == "Avengers") {
      foundAvengers = true;
    }
  }

  if (foundAvengers) {
    agent.strength += 2;
  }
}

void applyGreenGoblinsGoblinGlider(Agent agent){
  agent.strength += 2;
}

void applyNamorsAnkleWings(Agent agent){
  agent.strength += 1;
}

void applySevenLeagueBoots(Agent agent){
  agent.strength += 2;
}