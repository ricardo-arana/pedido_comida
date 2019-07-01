import 'package:flutter/material.dart';
import 'package:pedidos_comida/screens/PlatosView.dart';


class CateogiresView extends StatefulWidget {
  
  
  const CateogiresView();


  @override
  _CateogiresViewState createState() => _CateogiresViewState();
}

class _CateogiresViewState extends State<CateogiresView> {
 List<String> categorias = List();
  void loadCategoires(){
    setState(() {
     categorias = ["Marino", "Criollo", "Dietetico","internacional"]; 
    });
  }

  @override
  void initState() { 
    super.initState();
    loadCategoires();
  }
  @override
  Widget build(BuildContext context) {
    

    return Container(
      child: ListView.builder(itemCount: categorias.length,
      itemBuilder: (BuildContext context, int index){
        return ListTile(title: Text(categorias[index]),
                      onTap: () => goToCategory(index),);
      },
      ),
    );
  }

  void goToCategory(int index){
      debugPrint("seleciono: ${categorias[index]}");
      
  }
}