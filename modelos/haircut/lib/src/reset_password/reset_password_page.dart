import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black38,
              onPressed: () => Navigator.pop(context, false),
          ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/reset-password-icon.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Esquecu sua senha?",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Por favor, informe seu E-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração da sua senha.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(//cria um capo digitalvel
              keyboardType: TextInputType.emailAddress,//tipo de teclado
              decoration: InputDecoration(//dicara a caixa de texto
                  labelText: "E-mail...",
                  labelStyle: TextStyle(//formta a fonte de exempplo
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  )
              ),
              style: TextStyle(//estilo do texto digitavel na caixa de texto
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,//arredondamento do botao
              alignment: Alignment.centerLeft,//alinhamento para esquerda
              decoration: BoxDecoration(//para fazer as borads redondas
                gradient: LinearGradient(//vai fazer o degrader
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0xFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "Enviar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,//deicha em negrito
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,//texto alinhado a esquerda
                  ),
                  onPressed: () => {},
              ),
            ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
