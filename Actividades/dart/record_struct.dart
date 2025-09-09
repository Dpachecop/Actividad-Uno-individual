  // Definición de un tipo de Record para mayor claridad


/*
1- Declaración
Definir un struct o record que contenga: nombre, edad, promedio.
*/
typedef EstudianteRecord = ({String nombre, int edad, double promedio});



void main() {



  /*
  2- Inicialización
  Crear 3 instancias con datos ficticios en todos los lenguajes dado ahora mismo dart.
   */
  // Aqui se crean las tres instancias del record 
  final EstudianteRecord estudiante1 = (nombre: 'Ana', edad: 20, promedio: 95.5);
  final EstudianteRecord estudiante2 = (nombre: 'Luis', edad: 22, promedio: 88.0);
  final EstudianteRecord estudiante3 = (nombre: 'Marta', edad: 21, promedio: 92.3);
 
  
  List<EstudianteRecord>estudiantes = [estudiante1, estudiante2, estudiante3];



 /*
  3- Recorrido
  Guardar las instancias en un arreglo y recorrerlo mostrando los datos.
   */
  print('--- Datos de Estudiantes (Records) ---');
for (var estudiante in estudiantes) {
  
  print('Nombre: ${estudiante.nombre}, Edad: ${estudiante.edad}, Promedio: ${estudiante.promedio}');
}



 /*
  3- Modificación
Cambiar el promedio de un estudiante específico.
   */
print('\n--- Modificando promedio de Luis ---');
// Se busca el índice de Luis para reemplazarlo
int indexLuis = estudiantes.indexWhere((e) => e.nombre == 'Luis');
if (indexLuis != -1) {
    estudiantes[indexLuis] = (nombre: estudiantes[indexLuis].nombre, edad: estudiantes[indexLuis].edad, promedio: 90.0);
}

print('Nuevo promedio de Luis: ${estudiantes[indexLuis].promedio}');
}