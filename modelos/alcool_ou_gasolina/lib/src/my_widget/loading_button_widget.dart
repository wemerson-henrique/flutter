import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {

  var busy = false;
  var invert = false;
  Function funcao;
  var text = "";

  LoadingButton({
    @required this.busy,
    @required this.invert,
    @required this.funcao,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return
      busy ? Container(
        alignment: Alignment.center,
        height: 50,
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
        ),
      )
      :
      Container(
      margin: EdgeInsets.all(30),//margem do conteiner
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(//quando se usa BoxDecoration nao pode colocar a cor fora
        color: invert
            ? Theme.of(context).primaryColor
            : Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(60),
      ),
      child: FlatButton(
        child: Text(
          text,
          style: TextStyle(
            color:
            invert ? Colors.white : Theme.of(context).primaryColor,
            fontSize: 25,
            fontFamily: "Big Shoulders Display",
          ),
        ),
        onPressed: funcao,
      ),
    );
  }
}
