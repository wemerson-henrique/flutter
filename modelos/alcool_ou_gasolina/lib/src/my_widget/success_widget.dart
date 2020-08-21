import 'package:flutter/material.dart';

import 'loading_button_widget.dart';

class Success extends StatelessWidget {

  var result = "";
  Function reset;

  Success({
    @required this.result,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            result,
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
          LoadingButton(
            busy: false,
            invert: true,
            funcao: reset,
            text: "CALCULAR NOVAMENTE",
          ),
        ],
      ),
    );
  }
}
