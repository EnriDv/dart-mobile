abstract class Persona{
    final String ci;
    final String nombre;

    Persona({required this.ci, required this.nombre});
    void saludar(){
        print("Hola, mi nombre es $nombre y mi CI es $ci");
    }

}
interface class Nuevo{
    double obtenerOferta()
    {
        return 0.0;
    }   
}
    
class Estudiante extends Persona implements Nuevo{
    Estudiante({required String ci, required String name}) : super(ci: ci, nombre: name);    
    @override
    double obtenerOferta() {
        return 0.15;
    }
}

void main() {
    print("hola mundo");
    //Estudiante estudiante = Estudiante(ci: "12345678", nombre: "Juan Perez");
    final estudiante = Estudiante(ci: "87654321", name: "Maria Gomez");
    estudiante.saludar();

    print(estudiante.ci);
    print(estudiante.nombre);
    print("Porcentaje de oferta: ${estudiante.obtenerOferta() * 100}%");
}