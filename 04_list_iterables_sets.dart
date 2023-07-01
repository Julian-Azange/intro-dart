void main() {
  // listas
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original: $numbers'); // lista original
  print(
      'List original: ${numbers.toSet().toList()}'); // lista original sin duplicados
  print('Length: ${numbers.length}'); // longitud de la lista
  print('Index 0: ${numbers[0]}'); // indice 0
  print('First: ${numbers.first}'); // primer elemento
  print('Reversed: ${numbers.reversed}'); // lista al reves

  final reversedNumbers = numbers.reversed; // lista al reves iterada
  print('Iterable: $reversedNumbers'); // lista al reves, lista iterable
  print(
      'List: ${reversedNumbers.toList()}'); // lista al reves, lista iterable convertida a lista
  print(
      'Set: ${reversedNumbers.toSet()}'); // lista al reves, lista iterable convertida a set (no permite duplicados)

  final numbersGreaterThanFive = numbers
      .where((number) => number > 5); // lista de numeros mayores a 5 iterada
  print(
      '>5: $numbersGreaterThanFive'); // lista de numeros mayores a 5, lista iterable
  print(
      '>5: ${numbersGreaterThanFive.toSet()}'); // lista de numeros mayores a 5, lista iterable convertida a set (no permite duplicados)

  print('Index 7: ${numbers[7]}'); // obtener posicion 7 de la lista
}
