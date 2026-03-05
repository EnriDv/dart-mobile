// hacer un ejemplo sencillo usando herencia, 1 clase abstracta, 2 clases concretas
// que hereden atributos y al menos 1 metodo, e implementar un comportamiento(interfaz)
// desde una de las clases concretas

abstract class Vehiculo {
  final String marca;
  final String modelo;

  Vehiculo({required this.marca, required this.modelo});

  void mostrarInfo() {
    print("$runtimeType de Marca: $marca, Modelo: $modelo");
  }
}

interface class Encender {
  void encender() {
    print("El vehículo está encendido.");
  }
}

class Auto extends Vehiculo implements Encender {
  Auto({required String marca, required String modelo}) : 
    super(marca: marca, modelo: modelo);

  @override
  void encender() {
    print("El auto está encendido.");
  }
}

class Moto extends Vehiculo {
  Moto({required String marca, required String modelo}) : 
    super(marca: marca, modelo: modelo);

}

void main() {
  
  print('------------------------------');

  final auto1 = Auto(marca: "Suzuki", modelo: "Swift");
  auto1.mostrarInfo();
  auto1.encender();

  print('------------------------------');

  final moto1 = Moto(marca: "Honda", modelo: "Navi");
  moto1.mostrarInfo();
  
  print('------------------------------');

}