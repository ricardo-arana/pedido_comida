import 'package:flutter/material.dart';
import 'package:pedidos_comida/screens/CategoriesView.dart';
import 'package:pedidos_comida/screens/NewUserView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Don Marino',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Don Marino'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          child: Center(child:
            SingleChildScrollView(
              //controller: controller,
              child: Column(
                children: <Widget>[
                     SizedBox(
                       width: MediaQuery.of(context).size.width * 0.65,
                       child: Card(child: 
                       Text("REALIZA TU PEDIDO MAS RAPIDO Y DISFRUTA DE UNA NUEVA EXPERIENCIA"),),
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
                        child: TextField(decoration: InputDecoration( hintText: "Usuario"),textAlign: TextAlign.center,),
                    ),
                    SizedBox(
                        width: 150,
                        child:TextField(
                          decoration: InputDecoration( hintText: "Constraseña"),
                          textAlign: TextAlign.center,
                          obscureText: true,)),
                    RaisedButton(child: Text("INGRESAR"),onPressed: (){

                    },
                    color: Colors.green[200],),
                    FlatButton(child: Text("Crea tu cuenta",style: TextStyle(color: Colors.blueAccent),),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewUserView()));
                    }, )
                         ],),
                    ),
                     ),
                   


                ],
              ),
            ),
          ),
          ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
