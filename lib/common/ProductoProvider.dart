
import 'dart:async';

import 'package:pedidos_comida/common/HttpHandler.dart';
import 'package:pedidos_comida/model/ProductoModel.dart';


class ProductoProvider{
   HttpHandler _client = HttpHandler.get();
   Future<List<ProductoModel>> fetchProducto(int idCategoria){
    return _client.fetchProductos(idCategoria);
  }
}