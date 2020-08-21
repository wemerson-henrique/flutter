import 'package:alcoolougasolina/src/my_widget/input_widget.dart';
import 'package:alcoolougasolina/src/my_widget/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  var controle_gasolina = new MoneyMaskedTextController();//cria um comtrolador
  var controle_alcool = new MoneyMaskedTextController();//cria um comtrolador

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,//recebe a cor primaria da aplicatico "cor do plano de fundo"
      body: ListView(
        children: <Widget>[
          Logo(),
          Container(
            margin: EdgeInsets.all(30),//margem do conteiner
            decoration: BoxDecoration(//quando se usa BoxDecoration nao pode colocar a cor fora
              color: Colors.white.withOpacity(0.8),
               borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Compesa utilisar Álcool",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 40,
                    fontFamily: "Big Shoulders Display"
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(30),//margem do conteiner
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(//quando se usa BoxDecoration nao pode colocar a cor fora
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: FlatButton(
                    child: Text(
                      "CALCULAR NOVAMENTE",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 25,
                        fontFamily: "Big Shoulders Display",
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Input(
              label: "Gasolina",
              controle: controle_gasolina,
          ),
          Input(
            label: "Álcool",
            controle: controle_alcool,
          ),
          Container(
            margin: EdgeInsets.all(30),//margem do conteiner
            height: 60,
            decoration: BoxDecoration(//quando se usa BoxDecoration nao pode colocar a cor fora
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              child: Text(
                  "CALCULAR",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
