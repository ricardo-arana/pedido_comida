import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pedidos_comida/model/CategoriaModel.dart';
import 'package:pedidos_comida/model/ProductoModel.dart';

class HttpHandler{
  static final _httpHandler = HttpHandler();
  final String _baseUrl = "appgestionpedido.000webhostapp.com";

  static HttpHandler get(){
      return _httpHandler;
    }

    Future<dynamic> getJson(Uri uri,) async{
      http.Response response = await http.get(uri);
      return json.decode(response.body);
    }

    Future<List<CategoriaModel>> fetchCategorias() async{ 
      var uri = Uri.http(_baseUrl,"template/categoria/Obtener_categoria.php",{
      });

      return getJson(uri).then(((data) => 
        data.map<CategoriaModel>((item) => CategoriaModel(item)).toList()
      ));
    }

    Future<List<ProductoModel>> fetchProductos(int idCategoria){
      var uri = Uri.http(_baseUrl,"template/producto/Obtener_producto.php",{
        'id' : idCategoria.toString()
      });

      return getJson(uri).then(((data) => 
        data["productos"].map<ProductoModel>((item) => ProductoModel(item)).toList()
      ));
    }
}