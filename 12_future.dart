// Objetive: Show how to use Future and catchError

void main() {
  print('INFO: Inicio del programa.');

  httpGet('https://github.com/Julian-Azange').then((value) {
    print(value);
  })
  .catchError((error) {
    print('ERROR: $error');
  });

  print('INFO: Fin del programa.');
}

// Future: It's a type of object that returns a value in the future

Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 2), () {
    throw 'En la petición http.';
    // return 'STATUS: 200';
  });
}
