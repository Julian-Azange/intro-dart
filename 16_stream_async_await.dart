// Objetive: Show how to use async* and yield

void main(){
  emitNumbers().listen((value) {
    print('VALUE: $value');
  });
}

// Implementación con async* y yield (más simple)
Stream<int> emitNumbers() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i; // yield is like return but it doesn't stop the function
  }
}
