

/*
1 - Declaración
Definir una clase Estudiante con: nombre, edad, promedio y un método mostrarInfo.
 */
class Estudiante {
  String nombre;
  int edad;
  double promedio;

  Estudiante(this.nombre, this.edad, this.promedio);

  void mostrarInfo() {
    print('Nombre: $nombre, Edad: $edad, Promedio: $promedio');
  }

 
  void setPromedio(double nuevoPromedio) {
    this.promedio = nuevoPromedio;
  }
}

void main() {
  /*
  2 - Inicialización
  Crear 3 instancias y almacenarlas en un arreglo/lista.
   */
  final estudianteObj1 = Estudiante('Ana', 20, 95.5);
  final estudianteObj2 = Estudiante('Luis', 22, 88.0);
  final estudianteObj3 = Estudiante('Marta', 21, 92.3);
  final estudiantesObj = [estudianteObj1, estudianteObj2, estudianteObj3];

  
  /*
  3- Recorrido
  Llamar al método mostrarInfo para cada objeto.
   */
  print('\n--- Datos de Estudiantes (Objetos) ---');
  for (var estudiante in estudiantesObj) {
    estudiante.mostrarInfo();
  }




  /**
  4- Modificación
  Cambiar el promedio de un estudiante mediante un método setPromedio.
   */
print('\n--- Modificando promedio de Luis (Objeto) ---');
for (var estudiante in estudiantesObj) {
    if (estudiante.nombre == 'Luis') {
        estudiante.setPromedio(90.0);
        print('Información actualizada de Luis:');
        estudiante.mostrarInfo();
        break;
    }
}
}