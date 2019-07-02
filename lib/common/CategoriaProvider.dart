import 'dart:async';

import 'package:pedidos_comida/common/HttpHandler.dart';
import 'package:pedidos_comida/model/CategoriaModel.dart';


class CategoriaProvider{
  HttpHandler _client = HttpHandler.get();
  Future<List<CategoriaModel>> fechCategoria(){
    return _client.fetchCategorias();
  }
}

