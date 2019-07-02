import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pedidos_comida/model/ProductoModel.dart';

class FinishPedidoView extends StatefulWidget {

  FinishPedidoView();

  _FinishPedidoViewState createState() => _FinishPedidoViewState();
}

class _FinishPedidoViewState extends State<FinishPedidoView> {
  int _radioValue = 0;

  void selectItem(int value){
    setState(() {
      _radioValue = value;
    });
  }

  String getRandon(){
    var randonNumber = Random();
    return randonNumber.nextInt(10000).toString().padLeft(5,'0');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Medio de pago"),),
      body: Container(child: 
      SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(child: 
                Column(children: <Widget>[
                  Text("Pedido generado",style: TextStyle(fontSize: 18),),
                  Text("Pedido número: PE- ${getRandon()}",style: TextStyle(fontSize: 12),),

                  
                ],)
            ,),
          ),
        ),
      ),),
    );
  }
}