
class ProductoModel{
  int id;
  String descripcion;
  double precio;
  int categoria;

   factory ProductoModel(Map json){
    try{
        return ProductoModel.desealize(json);
    }catch(ex){
      throw ex;
    }
  }


  ProductoModel.desealize(Map json):
    id = int.parse(json["id"]),
    descripcion = json["descripcion"],
    precio = double.parse(json["precio"]),
    categoria = int.parse(json["categoria"]);
}