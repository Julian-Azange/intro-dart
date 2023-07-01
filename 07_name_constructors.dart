void main() {

  // final iroman = new Hero('Tony Stark', 'Inteligencia', false);

  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Inteligencia',
    'isAlive': true
  };

  final iroman = new Hero.fromJson(rawJson);

  print(iroman);
}

class Hero {

  String name = '';
  String power = '';
  bool isAlive = true;

  Hero(this.name, this.power, this.isAlive); // Constructor

  Hero.fromJson(Map<String, dynamic> json) { // Constructor named fromJson (Factory Constructor) to parse JSON data
    name = json['name'] ?? 'No found name';
    power = json['power'] ?? 'No found power';
    isAlive = json['isAlive'] ?? 'No found isAlive';
  }

  @override
  String toString() => 'Heroe: $name - Power: $power - isAlive: ${isAlive ? 'Yes!' : 'Nope :('}';
}
