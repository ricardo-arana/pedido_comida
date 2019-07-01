import 'package:flutter/material.dart';

class NewUserConfirm extends StatelessWidget {
  const NewUserConfirm({Key key}) : super(key: key);

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
                        child: TextField(decoration: InputDecoration( hintText: "Correo"),),
                    ),
                    SizedBox(
                        width: 150,
                        child:TextField(decoration: InputDecoration( hintText: "Contraseña"),obscureText: true,)),
                    SizedBox(
                        width: 150,
                        child:TextField(decoration: InputDecoration( hintText: "Confirmar Contraseña"),obscureText: true,)),
                  
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
    );
  }
}