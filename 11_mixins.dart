// Objetive: Show how to use mixins

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('INFO: Estoy volando!');
}

mixin Caminante {
  void caminar() => print('INFO: Estoy caminando!');
}

mixin Nadador {
  void nadar() => print('INFO: Estoy nadando!');
}

// Mamiferos
class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

// Aves
class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

// Peces
class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = new Delfin();
  flipper.nadar();

  final batman = new Murcielago();
  batman.volar();
  batman.caminar();

  final lucas = new Pato();
  lucas.caminar();
  lucas.nadar();
  lucas.volar();
}
