import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        Image.asset(
          "assets/images/aog-white.png",
          height: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Alcool ou Gasolina",
          style: TextStyle(//folha de estilo
            color: Colors.white,//cor do tseto
            fontSize: 25,//tamanho do texto
            fontFamily: "Big Shoulders Display",//tipo de font usada
          ),
          textAlign: TextAlign.center,//coloca o texto ao centro
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
