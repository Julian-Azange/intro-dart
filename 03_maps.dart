// Objective: Show how to use maps in dart

void main() {
  final Map<String, dynamic> pokemon = {
    // Mapa de tipo string y dynamic, todas las llaves seran de tipo string
    'name': 'Pikachu',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['Rayo', 'Trueno', 'Impactrueno'],
    'sprites': {1: 'pokemon/front.png', 2: 'pokemon/back.png'},
    'errorMessage': null,
  };

  print(pokemon);
  // print(pokemon['name']); // En llave cuadrada se pone el nombre de la llave
  print('Name: ${pokemon['name']}');
  print('Sprites: ${pokemon['sprites']}');

  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
}
