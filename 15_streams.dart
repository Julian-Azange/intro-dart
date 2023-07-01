// Objetive: Show how to use streams

void main() {
  emitNumbers().listen((value) { 
    print('VALUE: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    // print('INFO: desde el periodic.');
    return value;
  }).take(5);
}
