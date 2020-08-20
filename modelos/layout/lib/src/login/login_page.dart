import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haircut/src/cadastro/cadastro_page.dart';
import 'package:haircut/src/reset_password/reset_password_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40,),//margem
        color: Colors.white,/*blueAccent*///cor da pagina
        child: ListView(//colocado para o teclado nao ficar insima dos intems
          children: <Widget>[
            SizedBox(//cria uma caixa na tela
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(//cria um capo digitalvel
              //autofocus: true,//pega o email
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
              height: 10,
            ),
            TextFormField(
              //autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                    "Recuperar Senha",
                    //textAlign: TextAlign.right,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(//conteiner para estilisar botao
              height: 60,//arredondamento do botao
              alignment: Alignment.centerLeft,//alinhamento para esquerda
              decoration: BoxDecoration(//para fazer as borads redondas
                gradient: LinearGradient(//vai fazer o degrader
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.1, 1],//indica onde começa e onde termina o degrade
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,//vai tertar preencher todo o espaco vasio
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,//deicha em negrito
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,//texto alinhado a esquerda
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/bone.png"),
                          height: 28,
                          width: 26,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(//conteiner para estilisar botao
              height: 60,//arredondamento do botao
              alignment: Alignment.centerLeft,//alinhamento para esquerda
              decoration: BoxDecoration(//para fazer as borads redondas
                color: Color(0xFF3c5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,//vai tertar preencher todo o espaco vasio
                    children: <Widget>[
                      Text(
                        "Login com facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,//deicha em negrito
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left,//texto alinhado a esquerda
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/fb-icon.png"),
                          height: 28,
                          width: 26,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Castre-se",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CadastroPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
