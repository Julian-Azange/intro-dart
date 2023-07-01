// Objetive: Show how to use abstract classes

void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('INFO: windPlant: ${chargePhone(windPlant)}');
  print('INFO: nuclearPlant: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {  
    throw Exception('Not enough energy left');
  }

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water, solar }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water, solar

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// extends es como heredar de una clase
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(
            energyLeft: initialEnergy,
            type: PlantType.wind); // call the constructor of the parent class

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// implements es como implementar una interface
class NuclearPlant implements EnergyPlant {
  // implements es como implementar una interface
  @override
  double energyLeft;

  @override
  PlantType type = PlantType.nuclear;

  NuclearPlant({this.energyLeft = 100, this.type = PlantType.nuclear});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
