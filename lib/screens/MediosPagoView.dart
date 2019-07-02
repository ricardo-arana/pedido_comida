import 'package:flutter/material.dart';
import 'package:pedidos_comida/model/ProductoModel.dart';
import 'package:pedidos_comida/screens/FinishPedidoView.dart';

class MediosPagoView extends StatefulWidget {
  final List<ProductoModel> listProductos;
  MediosPagoView({this.listProductos});

  _MediosPagoViewState createState() => _MediosPagoViewState();
}

class _MediosPagoViewState extends State<MediosPagoView> {
  int _radioValue = 0;

  void selectItem(int value){
    setState(() {
      _radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Medio de pago"),),
      body: Container(child: 
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(child: 
              Column(children: <Widget>[
                Text("Selecione un pedio de pago:",style: TextStyle(fontSize: 18),),
                Row(children: <Widget>[
                  Radio(
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: selectItem,),
                  Text("Tarjeta")
                ],),
                Row(children: <Widget>[
                  Radio(value: 2,
                    groupValue: _radioValue,
                    onChanged: selectItem,),
                  Text("Deposito")
                ],),
                Row(children: <Widget>[
                  Radio(value: 3,
                    groupValue: _radioValue,
                    onChanged: selectItem,),
                  Text("Efectivo")
                ],),
                Text("Detalle de la compra:",style: TextStyle(fontSize: 18),),
                Column(children:
                  widget.listProductos.map((producto){
                    return ListTile(title: Text(producto.descripcion),
                    trailing: Text(producto.precio.toStringAsFixed(2)),);
                  }).toList()
                ,),
                RaisedButton(child: Text("Generar pedido"),
                onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(
                                        builder: (context) => FinishPedidoView()));
                },)
              ],)
          ,),
        ),
      ),),
    );
  }
}