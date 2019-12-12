import 'package:m2c2/card.dart';

void applyMasterTactician(Agent agent) => agent.strength += 2;

void applyHeightenedSenses(Agent agent) => agent.strength += 1;

void applySuperStrength(Agent agent) {
  agent.strength += 3;

  int remainingEmptyHands = 2;

  for (Equipment item in agent.equipment) {
    if (item.type == "One Handed") {
      remainingEmptyHands -= 1;
    } else if (item.type == "Two Handed") {
      remainingEmptyHands -= 2;
    }
  }

  if (remainingEmptyHands == 1) {
    agent.strength += 1;
  } else if (remainingEmptyHands == 2) {
    agent.strength += 2;
  }
}

void applyMartialArtist(Agent agent) => agent.strength += 2;

void applySuperSpy(Agent agent) => agent.strength += 1;

void applySuperSoldier(Agent agent) {
  agent.strength += 1;
  agent.strength += agent.allies.length;
}

void applyEnhancedAgility(Agent agent) => agent.strength += 2;

void applyMasterMarksman(Agent agent) => agent.strength += 2;

void applySizeAlteration(Agent agent) => agent.strength += 1;

void applySuperIntelligence(Agent agent) => agent.strength += 2;

void applyInvulnerability(Agent agent) => agent.strength += 3;

void applyElementalManiulation(Agent agent) => agent.strength += 4;

void applySuperSpeed(Agent agent) => agent.strength += 2;

void applyEnergyBlasts(Agent agent) => agent.strength += 1;

void applySupersonicFlight(Agent agent) => agent.strength += 1;