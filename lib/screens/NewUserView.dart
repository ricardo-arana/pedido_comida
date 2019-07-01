import 'package:flutter/material.dart';
import 'package:pedidos_comida/screens/NewUserConfirm.dart';

class NewUserView extends StatelessWidget {
  const NewUserView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nuevo usuario"),),
      body: SingleChildScrollView(child: 
        Center(
          child: Column(
                children: <Widget>[
                     SizedBox(
                       width: MediaQuery.of(context).size.width * 0.65,
                       child: Card(child: 
                       Text("REGISTRATE A UNA NUEVA EXPERIENCIA"),),
                     ),
                     SizedBox(
                       width: MediaQuery.of(context).size.width * 0.65,
                       child: Card(
                         child:  Column(
                           children: <Widget>[
                              Image.asset("assets/don_mamino_logo.png",
                                fit: BoxFit.cover,
                    ),
                    SizedBox(
                        width: 150,
                        child: TextField(decoration: InputDecoration( hintText: "Nombres"),),
                    ),
                    SizedBox(
                        width: 150,
                        child:TextField(decoration: InputDecoration( hintText: "Apellidos"),)),
                    SizedBox(
                        width: 150,
                        child:TextField(decoration: InputDecoration( hintText: "Correo"),)),
                    SizedBox(
                        width: 150,
                        child:TextField(decoration: InputDecoration( hintText: "Celular"),)),
                    SizedBox(
                        width: 150,
                        child:TextField(decoration: InputDecoration( hintText: "Edificio"),)),
                    SizedBox(
                        width: 150,
                        child:TextField(decoration: InputDecoration( hintText: "Telefono"),)),
                    SizedBox(
                        width: 150,
                        child:TextField(decoration: InputDecoration( hintText: "Anexo"),)),

                    SizedBox(
                        width: 150,
                        child:TextField(decoration: InputDecoration( hintText: "Piso"),)),
                    RaisedButton(child: Text("SIGUIENTE"),onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewUserConfirm()));
                    },
                    color: Colors.green[200],),
                    
                         ],),
                    ),
                     ),
                   


                ],
              ),
        )
      ,),
    );
  }
}