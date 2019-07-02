import 'package:flutter/material.dart';
import 'package:pedidos_comida/common/CategoriaProvider.dart';
import 'package:pedidos_comida/common/ProductoProvider.dart';
import 'package:pedidos_comida/common/Util.dart';
import 'package:pedidos_comida/model/CategoriaModel.dart';
import 'package:pedidos_comida/model/ProductoModel.dart';
import 'package:pedidos_comida/screens/MediosPagoView.dart';

class PedidoView extends StatefulWidget {
  final CategoriaProvider provider;
  PedidoView({this.provider});

  _PedidoViewState createState() => _PedidoViewState();
}

class _PedidoViewState extends State<PedidoView> {
  List<CategoriaModel> _categoria = List();

  List<ProductoModel> _listProductos = List();

  List<ProductoModel> _listSelectedProducts = List();

  @override
  void initState() { 
    super.initState();
    loadCategorias();
  }

  @override
  void didUpdateWidget(PedidoView oldWidget) {
    if(oldWidget.provider.runtimeType != widget.provider.runtimeType){
      _categoria = List();
      loadCategorias();
    }
    super.didUpdateWidget(oldWidget);
  }

  void loadCategorias() async {
    var categorias = await widget.provider.fechCategoria();
    setState(() {
      _categoria.addAll(categorias);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedido"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Card(
                    child: Text("Bienvenido usuario"),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Column(children: 
                            _categoria.map((f){
                              return SizedBox(
                          width: 150,
                          child: FlatButton(
                            child: Text(f.nombre),
                            onPressed: (){
                               showListProducts(f.id);
                            },
                          ),
                        );
                            }).toList()
                        ,),
                        
                        SizedBox(
                          width: 150,
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Total: S/. ${Util.sumaPrecios(_listSelectedProducts).toStringAsFixed(2)}",
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                        ),
                        
                        RaisedButton(
                          child: Text("Pagar"),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => MediosPagoView(listProductos: _listSelectedProducts,)));
                          },
                          color: Colors.green[200],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showListProducts(int idCategoria) async{
    ProductoProvider productoProvider = ProductoProvider();
    
    var dataProductos = await productoProvider.fetchProducto(idCategoria);
     setState(() {
              _listProductos = dataProductos;
            });

           
    showDialog(context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title: Text("Seleccione un producto"),
        content: SizedBox(
          height: 250,
          width: MediaQuery.of(context).size.width * 0.65,
          child: ListView(children: 
             _listProductos.map((producto){
                return ListTile(
                  title: Text(producto.descripcion),
                  trailing: Text("S/. ${producto.precio.toStringAsFixed(2)}"),
                  onTap: (){
                    agregarCarrito(producto);
                    Navigator.of(context).pop();
                  },
                );
             }).toList() 
          
          ,),
        ),
      );
    }
    );
  }

  void agregarCarrito(ProductoModel producto){
    var filtrado = _listSelectedProducts.where((l) => l.categoria == producto.categoria).toList();
    int countFilter = filtrado.length;
    if (countFilter > 0 ){
      setState(() {
        _listSelectedProducts.remove(filtrado[0]);
         _listSelectedProducts.add(producto);
      });
    }else{
      setState(() {
      _listSelectedProducts.add(producto);
    });
    }
    
  }
}
