import 'producto.dart';

class Inventario {
  final List<Producto> _productos;

  Inventario() : _productos = [];

  void agregarProducto(Producto producto) {
    if (_productos.any((p) => p.nombre.toLowerCase() == producto.nombre.toLowerCase())) {
      print("Error: El producto '${producto.nombre}' ya existe.");
    } else {
      _productos.add(producto);
      print("Producto '${producto.nombre}' agregado al inventario.");
    }
  }

  Producto? buscarProducto(String nombre) {
    try {
      return _productos.firstWhere(
        (p) => p.nombre.toLowerCase() == nombre.toLowerCase(),
      );
    } catch (e) {
      return null;
    }
  }

  void registrarEntrada(String nombreProducto, int cantidad) {
    final producto = buscarProducto(nombreProducto);
    if (producto != null) {
      producto.registrarEntrada(cantidad);
      print("Entrada registrada para '$nombreProducto'.");
    } else {
      print("Error: No se encontró el producto '$nombreProducto'.");
    }
  }

  void registrarSalida(String nombreProducto, int cantidad) {
    final producto = buscarProducto(nombreProducto);
    if (producto != null) {
      if (!producto.registrarSalida(cantidad)) {
        print("Error: Stock insuficiente para '$nombreProducto'.");
      } else {
        print("Salida registrada para '$nombreProducto'.");
      }
    } else {
      print("Error: No se encontró el producto '$nombreProducto'.");
    }
  }

  void generarReporteExistencias() {
    print("\n--- REPORTE DE EXISTENCIAS ---");
    if (_productos.isEmpty) {
      print("El inventario está vacío.");
      return;
    }
    print("------------------------------------");
    print("${"Producto".padRight(20)} | Stock Actual");
    print("------------------------------------");
    for (final p in _productos) {
      print("${p.nombre.padRight(20)} | ${p.stockActual}");
    }
    print("------------------------------------\n");
  }

  void generarReporteMovimientos() {
    print("\n--- REPORTE DE MOVIMIENTOS ---");
    if (_productos.isEmpty) {
      print("El inventario está vacío.");
      return;
    }
    for (final p in _productos) {
      print("\n--- Historial de: ${p.nombre} ---");
      if (p.historialMovimientos.isEmpty) {
        print("Sin movimientos registrados.");
      } else {
        for (final movimiento in p.historialMovimientos) {
          print("  - ${p.formatearMovimiento(movimiento)}");
        }
      }
    }
    print("\n--- FIN DEL REPORTE ---\n");
  }
}