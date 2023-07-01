void main() {
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;
  // final abilities = <String>['Rayo', 'Trueno', 'Impactrueno']; // lista de strings
  final List<String> abilities = [
    'Rayo',
    'Trueno',
    'Impactrueno'
  ]; // lista de strings escrito de otra forma
  final List<String> sprites = ['pokemon/front.png', 'pokemon/back.png'];

  // dynamic == null -> siempre va ser un valor null
  dynamic errorMessage = 'Error';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {1, 2, 3, 4, 5, 6};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage

  """);
}
