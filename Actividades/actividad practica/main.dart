import 'inventario.dart';
import 'producto.dart';

void main() {
  final miInventario = Inventario();

  print("--- Cargando productos iniciales ---");
  miInventario.agregarProducto(Producto("Laptop Gamer", 10));
  miInventario.agregarProducto(Producto("Mouse Inalámbrico", 50));
  miInventario.agregarProducto(Producto("Teclado Mecánico", 25));
  print("");

  miInventario.generarReporteExistencias();

  print("\n--- Realizando operaciones de inventario ---");
  miInventario.registrarEntrada("Laptop Gamer", 5);
  miInventario.registrarSalida("Mouse Inalámbrico", 15);
  miInventario.registrarSalida("Teclado Mecánico", 30); 
  miInventario.registrarSalida("Monitor Curvo", 5);  
  print("");

  miInventario.generarReporteExistencias();

  miInventario.generarReporteMovimientos();
}