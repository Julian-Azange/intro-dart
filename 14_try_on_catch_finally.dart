// Objetive: Show how to use try, on, catch and finally

void main() async {
  print('INFO: Inicio del programa.');
  try {
    final value = await httpGet('https://github.com/Julian-Azange');
    print('SUCCESS: $value');
  } on Exception catch (error) {
    print('ERROR: $error');
  
  } catch (error) {
    print('FATAL: Algo terrible paso: $error');
  } finally {
    print('INFO: Fin del try y catch.');
  }

  print('INFO: Fin del programa.');
}

Future<String> httpGet(String url) async {
  await Future.delayed(new Duration(seconds: 2));
  throw Exception('No hay parametros en el URL.');

  // throw 'En la petición http.'; // Para arrojar el error del catch

  // return 'STATUS: 200';
}
