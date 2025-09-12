class Estudiante {
  String nombre;
  // La matriz de calificaciones 
  List<List<double>> calificaciones;

  // Constructor
  Estudiante(this.nombre, this.calificaciones);

  void mostrarInfo() {
    print("--- Estudiante: $nombre ---");
    print("Matriz de Calificaciones:");
    for (var i = 0; i < calificaciones.length; i++) {
      print("  Asignatura ${i + 1}: ${calificaciones[i]}");
    }
    print(""); 
  }
}

void main() {
 
  final listaEstudiantes = [
    Estudiante("Ana Gómez", [[8.5, 9.0, 7.8], [9.2, 8.8, 9.5]]),
    Estudiante("Luis Torres", [[7.0, 6.5, 8.0], [8.1, 7.9, 7.5]])
  ];

  
  print("--- REPORTE DE CALIFICACIONES ---");
  for (final estudiante in listaEstudiantes) {
    estudiante.mostrarInfo();
  }
}