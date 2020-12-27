import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _loadItems(){

    _itens = [];
    for(int i=0; i<=10; i++){

      Map<String, dynamic> item = Map();
      item["title"] = " ${i} Lorem ipsum dolor sit amet.";
      item["description"] = "Description ${i} ipsum dolor sit amet.";
      _itens.add( item );

    }

  }

  @override
  Widget build(BuildContext context) {

    _loadItems();

    return Scaffold(
      appBar: AppBar(
      title: Text("List"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: _itens.length,
            itemBuilder: (context, indice){

              //Map<String, dynamic> item = _itens[indice];
              //print("item ${ _itens[indice]["title"] }");

              return ListTile(
                title : Text( _itens[indice]["title"] ),
                subtitle: Text( _itens[indice]["description"] ),
              );
            }
        ),
      ),
    );
  }
}
