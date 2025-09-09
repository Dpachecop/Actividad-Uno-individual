from dataclasses import dataclass

"""
1- Declaración
Definir un struct o record que contenga: nombre, edad, promedio.
"""
@dataclass
class EstudianteStruct:
    nombre: str
    edad: int
    promedio: float

"""
2- Inicialización
  Crear 3 instancias con datos ficticios en todos los lenguajes dado ahora mismo python
"""
estudiante1 = EstudianteStruct(nombre='Ana', edad=20, promedio=95.5)
estudiante2 = EstudianteStruct(nombre='Luis', edad=22, promedio=88.0)
estudiante3 = EstudianteStruct(nombre='Marta', edad=21, promedio=92.3)
estudiantes = [estudiante1, estudiante2, estudiante3]

"""
3- Recorrido
Guardar las instancias en un arreglo y recorrerlo mostrando los datos.
"""
print("--- Datos de Estudiantes (Structs) ---")
for estudiante in estudiantes:
  # Acceso a los campos usando la notación de punto
  print(f"Nombre: {estudiante.nombre}, Edad: {estudiante.edad}, Promedio: {estudiante.promedio}")


"""
  3- Modificación
Cambiar el promedio de un estudiante específico.
"""
print("\n--- Modificando promedio de Luis ---")
for estudiante in estudiantes:
    if estudiante.nombre == 'Luis':
        estudiante.promedio = 90.0
        print(f"Nuevo promedio de Luis: {estudiante.promedio}")
        break