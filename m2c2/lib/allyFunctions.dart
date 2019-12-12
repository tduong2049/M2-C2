import 'package:m2c2/card.dart';

void applyFalcon(Agent agent) {
  agent.strength += 1;
}

void applyIronMan(Agent agent) {
  agent.strength += 2;

  if (agent.sex == "Female") {
    agent.strength += 2;
  }

  for (Equipment item in agent.equipment) {
    if (item.type == "Armor") {
      agent.strength += 2;
    }
  }
}

void applyHawkeye(Agent agent) {
  agent.strength += 1;

  bool isAvengers = false;

  for (Affiliation item in agent.affiliations) {
    if (item.name == "Avengers") {
      isAvengers = true;
    }
  }

  if (isAvengers) {
    agent.strength += 2;
  }
}

void applyThor(Agent agent) {
  agent.strength += 4;
}

void applyCaptainMarvel(Agent agent) {
  agent.strength += 2;

  bool isInhuman = false;

  for (Affiliation item in agent.affiliations) {
    if (item.name == "Inhumans") {
      isInhuman = true;
    }
  }

  if (isInhuman) {
    agent.strength += 2;
  }
}

void applySpiderman(Agent agent) {
  agent.strength += 2;

  bool isSpiderFriend = false;

  for (Affiliation item in agent.affiliations) {
    if (item.name == "Spider-Friends") {
      isSpiderFriend = true;
    }
  }

  if (isSpiderFriend) {
    agent.strength += 2;
  }
}

void applyBlackPanther(Agent agent) {
  agent.strength += 1;
}

void applyDaredevil(Agent agent) {
  agent.strength += 1;
}

void applyBlackWidow(Agent agent) {
  agent.strength += 1;
}

void applyHulk(Agent agent) {
  agent.strength += 5;
}

void applyNickFury(Agent agent) {
  agent.strength += 1;
}

void applyCaptainAmerica(Agent agent) {
  agent.strength += 2;

  bool isAvenger = false;

  for (Affiliation item in agent.affiliations) {
    if (item.name == "Avengers") {
      isAvenger = true;
    }
  }

  if (isAvenger) {
    agent.strength += 2;
  }
}

void applyAntman(Agent agent) {
  agent.strength += 1;
}

void applySheHulk(Agent agent) {
  agent.strength += 2;

  if (agent.sex == "Male") {
    agent.strength += 2;
  }
}

void applyTheVision(Agent agent) {
  agent.strength += 2;
}