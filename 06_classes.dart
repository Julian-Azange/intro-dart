// Objective: Classes in Dart

void main(){

  final wolverine = new Hero('Logan', 'Regeneracion');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);



}

class Hero{

  String name = '';
  String power = '';

  Hero(this.name, this.power); // Constructor

  @override // Override: Sobreescribir el metodo toString()
  String toString() => 'Heroe: $name - Power: $power';
}