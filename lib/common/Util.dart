import 'package:pedidos_comida/model/ProductoModel.dart';

class Util {
  static double sumaPrecios(List<ProductoModel> listaProducto) {
    double suma = 0.0;
    if (listaProducto.length > 0) {
      listaProducto.forEach((producto) {
        suma += producto.precio;
      });
    }
    return suma;
  }
}
