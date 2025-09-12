class Estudiante:
    def __init__(self, nombre: str, calificaciones: list[list[float]]):
        self.nombre = nombre
        # La matriz de calificaciones 
        self.calificaciones = calificaciones

    def mostrar_info(self):
        print(f"--- Estudiante: {self.nombre} ---")
        print("Matriz de Calificaciones:")
        # Se recrre esa matriz
        for i, fila in enumerate(self.calificaciones):
            print(f"  Asignatura {i + 1}: {fila}")
        print("") 

# --- Creación del arreglo de objetos ---
# Cada objeto tiene un campo que es una matriz
lista_estudiantes = [
    Estudiante("Ana Gómez", [[8.5, 9.0, 7.8], [9.2, 8.8, 9.5]]),
    Estudiante("Luis Torres", [[7.0, 6.5, 8.0], [8.1, 7.9, 7.5]])
]

# --- Recorremos el arreglo y mostramos la información ---
print("--- REPORTE DE CALIFICACIONES ---")
for estudiante in lista_estudiantes:
    estudiante.mostrar_info()