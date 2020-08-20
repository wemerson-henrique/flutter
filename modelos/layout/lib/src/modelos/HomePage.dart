import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'item.dart';

class HomePage extends StatefulWidget {
  var items = new List<Item>();//cria uma lista de irems
  HomePage(){
    items = [];//inicia alista de items
    //items.add(Item(title: "Item 1", done: false));//adiciona item
    //items.add(Item(title: "Item 2", done: true));
    //items.add(Item(title: "Item 3", done: false));
  }
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var newtaskCtrl = TextEditingController();//controla vai controlar o texto da caixa de texto

  void add() {//adiciona item
    if(newtaskCtrl.text.isEmpty) return;
    setState(() {
      widget.items.add(
          Item(
              title: newtaskCtrl.text,
              done: false
          )
      );
      newtaskCtrl.text = "";
      save();
      //newtaskCtrl.clear();
    });
  }

  void remove(int index){
    setState(() {
      widget.items.removeAt(index);
    });
    save();
  }

  Future load() async{
    var prefs  = await SharedPreferences.getInstance();
    var data = prefs.getString('data');//vai ler preferencia
    if(data != null){
      Iterable decoded = jsonDecode(data);//converte string para json
      List<Item> result = decoded.map((x) => Item.fromJson(x)).toList();
      setState(() {
        widget.items = result;
      });
    }
  }

  save() async{
    var prefs  = await SharedPreferences.getInstance();
    await prefs.setString('data', jsonEncode(widget.items));//vai sauvar a preferencia
  }

  _HomePageState(){
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: /*Text("Todo List"),*/ TextFormField(//TextFormField cria uma caixa de texto
          controller: newtaskCtrl,//referencia que o controlador é newtaskCtrl
          keyboardType: TextInputType.text,// tipo de teclado
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          decoration: InputDecoration(
            labelText: "Degite aqui..",
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext ctxt, int index){
          final item = widget.items[index];
          return Dismissible(
            child: CheckboxListTile(
              title: Text(item.title),
              value: item.done,
              onChanged: (value){
                setState(() {//metodo para atualizar o estado
                  item.done = value;
                  save();
                });
              },
            ),
            key: Key(item.title),
            background: Container(
              color: Colors.red.withOpacity(0.2),
            ),
            onDismissed: (direction){

              remove(index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,//chama a finção
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}