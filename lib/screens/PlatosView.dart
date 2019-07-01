import 'package:flutter/material.dart';

class PlatosView extends StatefulWidget {
  final String category;
  PlatosView({this.category});

  _PlatosViewState createState() => _PlatosViewState();
}

class _PlatosViewState extends State<PlatosView> {
  List<String> platos = ["Ceviche","Arroz con mariscos", "sudado"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Platos de ${widget.category}:"),),
      body: Container(child: 
        ListView.builder(itemCount: platos.length,
                         itemBuilder: (BuildContext context, int index){
                           return ListTile(
                             title: Text(platos[index]),
                           );
                         },)
      
      ,),
    );
  }
}