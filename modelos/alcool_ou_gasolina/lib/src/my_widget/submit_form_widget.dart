import 'package:alcoolougasolina/src/my_widget/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'loading_button_widget.dart';

class SubmitForm extends StatelessWidget {

  var controle_gasolina = new MoneyMaskedTextController();//cria um comtrolador
  var controle_alcool = new MoneyMaskedTextController();//cria um comtrolador
  var busy = false;
  Function funcao_submit;

  SubmitForm({
    @required this.controle_gasolina,
    @required this.controle_alcool,
    @required this.busy,
    @required this.funcao_submit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              left: 30,
              right: 30,
          ),
          child: Input(
              label: "Gasolina",
              controle: controle_gasolina,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Álcool",
            controle: controle_alcool,
          ),
        ),
        SizedBox(
          height: 35,
        ),
        LoadingButton(
          busy: busy,
          invert: false,
          funcao: funcao_submit,
          text: "CALCULAR",
        ),
      ],
    );
  }
}
