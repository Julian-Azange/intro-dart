// Hola mundo en Dart

void main() {
// var myName = 'Julian';
// final myName = 'Julian'; // una vez se establece no se puede cambiar
// late final myName = 'Julian'; // inicializacion tardia
// String myName = 'Julian'; // tipo de dato explicito
  const myName = 'Julian'; // constante: jamas va cambiar de valor

  print('INFO: Hola $myName');
  // interpolacion de variables siempre dentro de llaves {}
  print('INFO: Hola ${myName.toUpperCase()}'); // interpolacion de metodos
  print('INFO: Hola ${ 1 + 1 }'); // interpolacion de expresiones
}
