abstract class Card {
  String name;
  bool isSelected;

  Card({this.name, this.isSelected = false});
}

class Agent extends Card {
  String sex;
  int rank;
  int strength;
  List<Equipment> equipment = [];
  List<Ally> allies = [];
  List<Power> powers = [];
  List<Affiliation> affiliations = [];

  Agent({name, this.sex = "M", this.rank = 1, this.strength = 0})
      : super(name: name);
}

class Equipment extends Card {
  String type;
  int bonus;
  int goldValue;

  Equipment({name, this.type, this.bonus = 0, this.goldValue = 0})
      : super(name: name);
}

class Ally extends Card {
  int bonus;

  Ally({name, this.bonus = 0}) : super(name: name);
}

class Power extends Card {
  int bonus;
  int rankRequirement;

  Power({name, this.bonus = 0, this.rankRequirement = 1}) : super(name: name);
}

class Affiliation extends Card {
  bool hasDisadvantages;

  Affiliation({name, this.hasDisadvantages}) : super(name: name);
}