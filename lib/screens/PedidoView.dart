import 'package:flutter/material.dart';

class PedidoView extends StatefulWidget {
  PedidoView({Key key}) : super(key: key);

  _PedidoViewState createState() => _PedidoViewState();
}

class _PedidoViewState extends State<PedidoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Pedido"),),
       body: Container(child: 
       SingleChildScrollView(child: 
        Center(
          child: Column(
                children: <Widget>[
                     SizedBox(
                       width: MediaQuery.of(context).size.width * 0.65,
                       child: Card(child: 
                       Text("Bienvenido usuario"),),
                     ),
                     SizedBox(
                       width: MediaQuery.of(context).size.width * 0.65,
                       child: Card(
                         child:  Column(
                           children: <Widget>[
                              
                    
                    SizedBox(
                        width: 150,
                        child:FlatButton(child: Text("Seleccione su entrada"),),),
                    SizedBox(
                        width: 150,
                        child:FlatButton(child: Text("Seleccione su Segundo"),),),
                    SizedBox(
                        width: 150,
                        child:FlatButton(child: Text("Seleccione su postre"),),), 

                    SizedBox(
                        width: 150,
                        child: Row(children: <Widget>[
                          Text("Total: S/. 20.00",textAlign: TextAlign.right,)
                        ],),), 
                  
                    SizedBox(
                        width: 150,
                        child:TextField(decoration: InputDecoration( hintText: "Piso"),)),
                    RaisedButton(child: Text("INGRESAR"),onPressed: (){
                        
                    },
                    color: Colors.green[200],),
                  
                         ],),
                    ),
                     ),
                   


                ],
              ),
        )
      ,),
       ,),
    );
  }
}