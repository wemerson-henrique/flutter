import 'package:flutter/cupertino.dart';
import 'package:imc/src/blocs/imc-bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Cálculo de IMC"),
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: CupertinoTextField(
                placeholder: "Altura (cm)",
                controller: bloc.AutaraControle,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: CupertinoTextField(
                placeholder: "Peso (kg)",
                controller: bloc.PesoControle,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                bloc.result,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: CupertinoButton.filled(
                  child: Text(
                      "CALCULAR",
                  ),
                  onPressed: () {
                    setState(() {
                      bloc.Calculate();
                    });
                  },
              ),
            ),
          ],
        ),
    );
  }
}
