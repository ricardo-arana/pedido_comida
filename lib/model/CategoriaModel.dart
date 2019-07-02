
class CategoriaModel{
  int id;
  String nombre;
  String estado;

  factory CategoriaModel(Map json){
    try{
        return CategoriaModel.desealize(json);
    }catch(ex){
      throw ex;
    }
  }


  CategoriaModel.desealize(Map json):
    id = int.parse(json["id"]),
    nombre = json["nombre"],
    estado = json["estado"];

}