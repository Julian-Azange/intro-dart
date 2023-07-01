void main() {
  
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(1, 2)}');
  print('Suma: ${addTwoNumbersOptional(1)}');
  print(greetPerson(name: 'Julian', message: 'Hi'));

}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int? b]) => a + (b ?? 0); // b es opcional

String greetPerson({required String name, String message = 'Hello'}){ // name es obligatorio y message es opcional

  return '$message, Julian';
}

