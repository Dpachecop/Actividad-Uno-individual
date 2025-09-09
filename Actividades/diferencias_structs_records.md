Comparativa: Dart Record vs. Python dataclass

Sintaxis
--------------------------------------------------
Dart Es directo y no necesita preparación. Se crea al instante con paréntesis. Por ejemplo:
 var estudiante = (nombre: 'Ana', edad: 22);

 aunque igualmente se puede declarar al momento, supongamos que tenemos el record MiRecord 

 podria deifinirse:

 MiRecord estudiante = (nombre: 'Ana', edad: 22)

---------------------

Python: Requiere importar y definir una clase (@dataclass) primero. Por ejemplo:
from dataclasses import dataclass
@dataclass
class Estudiante:
nombre: str
edad: int
estudiante = Estudiante(nombre='Ana', edad=22)
--------------------------------------------------

Mutabilidad 

Dart : Son inmutables. Una vez creados, sus datos no se pueden modificar, lo que da más seguridad al código. Por ejemplo, si intentas cambiar un valor, dará un error.

esta operacion es totalmente invalida:
estudiante = (nombre: "Jhon Arrieta")
estudiante.nombre = "Daniel";

----------------------

Python: Son mutables por defecto. Puedes cambiar sus valores en cualquier momento. 
Por ejemplo: estudiante.edad = 22 es una operación válida.
--------------------------------------------------
Tipado 

Dart: Es de tipado estricto. El lenguaje se asegura de que los tipos de datos sean correctos.

---------------------
Python: Usa "type hints" (como nombre: str), que son opcionales y actúan como una recomendación, pero no son obligatorios.
--------------------------------------------------