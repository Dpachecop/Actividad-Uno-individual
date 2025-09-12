
typedef Movimiento = ({
  String tipo,
  int cantidad,
  int stockResultante,
  DateTime fechaHora
});

class Producto {
  String nombre;
  int stockActual;
  List<Movimiento> historialMovimientos;

  Producto(this.nombre, int stockInicial)
      : stockActual = stockInicial,
        historialMovimientos = [] {
    _registrarMovimiento("Creación de producto", stockInicial);
  }

  void registrarEntrada(int cantidad) {
    if (cantidad > 0) {
      stockActual += cantidad;
      _registrarMovimiento("Entrada", cantidad);
    }
  }

  bool registrarSalida(int cantidad) {
    if (cantidad > 0 && cantidad <= stockActual) {
      stockActual -= cantidad;
      _registrarMovimiento("Salida", cantidad);
      return true;
    }
    return false;
  }

  void _registrarMovimiento(String tipo, int cantidad) {
    final movimiento = (
      tipo: tipo,
      cantidad: cantidad,
      stockResultante: stockActual,
      fechaHora: DateTime.now()
    );
    historialMovimientos.add(movimiento);
  }

  
  String formatearMovimiento(Movimiento mov) {
    // Obtenemos los componentes de la fecha y hora.
    final dt = mov.fechaHora;
    final year = dt.year;
    // padLeft asegura que los números de un solo dígito tengan un '0' a la izquierda (ej: 7 -> "07").
    final month = dt.month.toString().padLeft(2, '0');
    final day = dt.day.toString().padLeft(2, '0');
    final hour = dt.hour.toString().padLeft(2, '0');
    final minute = dt.minute.toString().padLeft(2, '0');
    final second = dt.second.toString().padLeft(2, '0');

    // Pa que no se utilicen paquetes externos se hace el format manualmente 
    final fechaStr = "$year-$month-$day $hour:$minute:$second";
    
    return "[$fechaStr] ${mov.tipo}: ${mov.cantidad} unidades. Stock resultante: ${mov.stockResultante}";
  }
}