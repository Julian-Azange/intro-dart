// Objetive: Show how to use async and await

void main() async {
  print('INFO: Inicio del programa.');
  try {
    final value = await httpGet('https://github.com/Julian-Azange');
    print(value);
  }catch(error) {
    print('ERROR: $error');
  }

  print('INFO: Fin del programa.');
}

// Future: It's a type of object that returns a value in the future
// async: It's a keyword that indicates that the function will return a Future
// await: It's a keyword that indicates that the function will wait for the Future to be resolved

Future<String> httpGet(String url) async {
  await Future.delayed(new Duration(seconds: 2));
  throw 'En la petición http.';

  // return 'STATUS: 200';
}
