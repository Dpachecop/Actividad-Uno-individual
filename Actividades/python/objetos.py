
"""
1 - Declaración
Definir una clase Estudiante con: nombre, edad, promedio y un método mostrarInfo.
"""
class Estudiante:

    def __init__(self, nombre: str, edad: int, promedio: float):
        self.nombre = nombre
        self.edad = edad
        self.promedio = promedio

    def mostrar_info(self):
        print(f"Nombre: {self.nombre}, Edad: {self.edad}, Promedio: {self.promedio}")

    def set_promedio(self, nuevo_promedio: float):
        self.promedio = nuevo_promedio


"""
2 - Inicialización
  Crear 3 instancias y almacenarlas en un arreglo/lista.
"""
estudiante_obj1 = Estudiante(nombre='Ana', edad=20, promedio=95.5)
estudiante_obj2 = Estudiante(nombre='Luis', edad=22, promedio=88.0)
estudiante_obj3 = Estudiante(nombre='Marta', edad=21, promedio=92.3)

# Almacenarlas en una lista
estudiantes_obj = [estudiante_obj1, estudiante_obj2, estudiante_obj3]

"""
3- Recorrido
  Llamar al método mostrarInfo para cada objeto.
"""
print("\n--- Datos de Estudiantes (Objetos) ---")
for estudiante in estudiantes_obj:
    estudiante.mostrar_info()




"""

4- Modificación
  Cambiar el promedio de un estudiante mediante un método setPromedio.

"""
print("\n--- Modificando promedio de Luis (Objeto) ---")
for estudiante in estudiantes_obj:
    if estudiante.nombre == 'Luis':
        estudiante.set_promedio(90.0)
        print("Información actualizada de Luis:")
        estudiante.mostrar_info()
        break