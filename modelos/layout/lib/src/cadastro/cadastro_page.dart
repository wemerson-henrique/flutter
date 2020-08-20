import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200,//largura do conteiner
              height: 200,//autura do conteiner
              alignment: Alignment(0.0, 1.15),//alinha os items do conteiner com a imagem ao fundo exem 0.0,1.15
              decoration: new BoxDecoration(//box com a imagem de fundo
                image: new DecorationImage(
                  image: AssetImage("assets/profile-picture.png"),
                  fit: BoxFit.fitHeight,//comportamenta da imagem no box
                ),
              ),
              child: Container(
                height: 56,//altura
                width: 56,//largura
                alignment: Alignment.center,//alinhamento
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1.0],
                    colors: [
                      Color(0xFFF58524),
                      Color(0xFFF92B7F),
                    ],
                  ),
                  border: Border.all(
                    width: 4.0,//largura da borda
                    color: const Color(0Xffffffff),//cor da borda
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(56),//diz para borda do botao ser circular
                  ),
                ),
                child: SizedBox.expand(//coloca uma caixa que seexpande pelo conteiner
                  child: FlatButton(//cria um botao
                    child: Icon(//cria um iconi dentro de butao
                      Icons.add,//tipo de icone
                      color: Colors.white,//cor do icone
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(//cria um campo de texto
              keyboardType: TextInputType.text,//tipo de teclado que vai aparecer
              decoration: InputDecoration(
                labelText: "Nome",//exemplo do que vai ser inserido
                labelStyle: TextStyle(//estilo do texto de exemplo
                  color: Colors.black38,//cor do texto de exemplo
                  fontWeight: FontWeight.w400,//largura do texto de exemplo
                  fontSize: 20,//tamanho do texto exemplo
                )
              ),
              style: TextStyle(//estilo do texto digitada pelo usuario
                fontSize: 20,//tamanha do texto do usuario
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(//cria um campo de texto
              keyboardType: TextInputType.emailAddress,//tipo de teclado que vai aparecer
              decoration: InputDecoration(
                  labelText: "E-mai",//exemplo do que vai ser inserido
                  labelStyle: TextStyle(//estilo do texto de exemplo
                    color: Colors.black38,//cor do texto de exemplo
                    fontWeight: FontWeight.w400,//largura do texto de exemplo
                    fontSize: 20,//tamanho do texto exemplo
                  )
              ),
              style: TextStyle(//estilo do texto digitada pelo usuario
                fontSize: 20,//tamanha do texto do usuario
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(//cria um campo de texto
              keyboardType: TextInputType.text,//tipo de teclado que vai aparecer
              obscureText: true,//deicha invisivel o que ousuario copiar
              decoration: InputDecoration(
                  labelText: "Senha",//exemplo do que vai ser inserido
                  labelStyle: TextStyle(//estilo do texto de exemplo
                    color: Colors.black38,//cor do texto de exemplo
                    fontWeight: FontWeight.w400,//largura do texto de exemplo
                    fontSize: 20,//tamanho do texto exemplo
                  )
              ),
              style: TextStyle(//estilo do texto digitada pelo usuario
                fontSize: 20,//tamanha do texto do usuario
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 56,//altura
              alignment: Alignment.centerLeft,//alinhamento
              decoration: BoxDecoration(
                gradient: LinearGradient(//cria degrade
                  begin: Alignment.topLeft,//comessa no top direito
                  end: Alignment.bottomRight,// e termina no fundo direito
                  stops: [0.3, 1.0],
                  colors: [
                    Color(0xFFF58524),
                    Color(0xFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),//diz para borda do botao ser circular"efeito de arredondamento"
                ),
              ),
              child: SizedBox.expand(//coloca uma caixa que se expande pelo conteiner
                child: FlatButton(//cria um botao
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                  child: Text(
                    "Cancelar",
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => Navigator.pop(context, false),//tira a pagina da tela
              ),
            )
          ],
        ),
      ),
    );
  }
}
