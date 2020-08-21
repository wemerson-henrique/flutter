import 'package:alcoolougasolina/src/my_widget/logo.dart';
import 'package:alcoolougasolina/src/my_widget/submit_form_widget.dart';
import 'package:alcoolougasolina/src/my_widget/success_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.deepPurple;
  var _controle_gasolina = new MoneyMaskedTextController();
  var _controle_alcool = new MoneyMaskedTextController();
  var _busy = false;
  var _completed = false;
  var _resultText = "Compesa utilisar Álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,//recebe a cor primaria da aplicatico "cor do plano de fundo"
      body: AnimatedContainer(
        duration: Duration(
          milliseconds: 1200,
        ),
        color: _color,
        child: ListView(
          children: <Widget>[
            Logo(),
            _completed
                ? Success(
              result: _resultText,
              reset: reset,
            )
                :
            SubmitForm(
              controle_gasolina: _controle_gasolina,
              controle_alcool: _controle_alcool,
              busy: _busy,
              funcao_submit: calculate,
            ),
          ],
        ),
      ),
    );
  }

  Future calculate(){
    double alc =
        double.parse(_controle_gasolina.text.replaceAll(new RegExp(r'[,.]'), ''))/100;//double.parse(_controle_gasolina.text.replaceAll converte as string para double, new RegExp(r'[,.]'), subistitui as virgulas por pontos
    double gas =
        double.parse(_controle_alcool.text.replaceAll(new RegExp(r'[,.]'), ''))/100;
    double res = alc / gas;

    setState(() {
      _color = Colors.deepPurpleAccent;
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(
      const Duration(seconds: 1),//criar um delei de 3 segundos
        () {//a função que vai ser exxecutada depois de 3 segundos
          setState (() {
            if (res >= 0.7) {
            _resultText = "Compesa utilisar Gasolina";
            } else {
            _resultText = "Compesa utilisar Álcool";
            }
            _busy = false;
            _completed = true;
          });
        });
  }

  reset(){
    setState(() {
      _controle_gasolina = new MoneyMaskedTextController();
      _controle_alcool = new MoneyMaskedTextController();
      _busy = false;
      _completed = false;
      _color = Colors.deepPurple;
    });
  }
}
