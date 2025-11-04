// Clase abstracta
abstract class MiembroDeLaComunidad {
  // Atributos protegidos (usando guion bajo)
  String _nombre;
  int _edad;

  // Constructor
  MiembroDeLaComunidad(this._nombre, this._edad);

  // Método abstracto (sin cuerpo)
  void presentarse();
}

// Clase Estudiante que hereda de MiembroDeLaComunidad
class Estudiante extends MiembroDeLaComunidad {
  String _grado;
  final String _idEstudiante; // ID privado, no modificable

  // Constructor
  Estudiante(String nombre, int edad, this._grado, this._idEstudiante)
      : super(nombre, edad);

  // Getter para el ID
  String get idEstudiante => "ID-EST-$_idEstudiante";

  // Implementación del método presentarse
  @override
  void presentarse() {
    print(
        "Hola, soy el estudiante $_nombre, tengo $_edad años y estoy en $_grado. Mi código es ${idEstudiante}.");
  }
}

// Clase Profesor que hereda de MiembroDeLaComunidad
class Profesor extends MiembroDeLaComunidad {
  String _materia;

  // Constructor
  Profesor(String nombre, int edad, this._materia) : super(nombre, edad);

  // Implementación del método presentarse
  @override
  void presentarse() {
    print(
        "Buenos días, soy el profesor $_nombre, tengo $_edad años y enseño $_materia.");
  }
}

// Función principal
void main() {
  // Creamos una lista de MiembroDeLaComunidad con 2 estudiantes y 1 profesor
  List<MiembroDeLaComunidad> miembros = [
    Estudiante("Carlos", 16, "10° Grado", "001"),
    Estudiante("Juan", 17, "11° Grado", "002"),
    Profesor("Javier", 40, "Matemáticas"),
  ];

  // Iteramos sobre la lista
  for (var persona in miembros) {
    persona.presentarse();

    // Si es un estudiante, imprimimos también su ID
    if (persona is Estudiante) {
      print("Su identificador es: ${persona.idEstudiante}");
    }

    print(""); // Espacio entre cada presentación
  }
}

