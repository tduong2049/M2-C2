abstract class Card {
  String name;
  int id;
  bool isSelected;

  Card(this.name, [this.isSelected = false]);
}

class Agent extends Card {
  String sex;
  int rank;
  int strength;

  Agent({name, id, this.sex = "M", this.rank = 1, this.strength = 0}) : super(name, id);
}

