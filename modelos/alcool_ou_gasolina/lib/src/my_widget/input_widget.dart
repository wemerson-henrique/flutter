import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {

  var label = "";
  var controle = new MoneyMaskedTextController();//cria um comtrolador

  Input({//metodo com o mesmonome da class
    @required this.label,
    @required this.controle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          alignment: Alignment.centerLeft,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: "Big Shoulders Display",
            ),
          ),
        ),
        SizedBox(
          width: 100,
        ),
        Expanded(//vai expandir
          child: TextFormField(
            controller: controle,//controller cria um despositivo de controle no input, controlegasolina nome do controlador
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "Big Shoulders Display",
            ),
            decoration: InputDecoration(
              border: InputBorder.none,//retira a borda do imput
            ),
          ),
        ),
      ],
    );
  }
}
