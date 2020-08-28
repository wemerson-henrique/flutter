import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc{
  var AutaraControle = MaskedTextController(mask: '000');//creia um controle de texto
  var PesoControle = MaskedTextController(mask: '000');//creia um controle de texto
  var result = "Preencha os dados para calcular seu IMC";//cria a variavel resultado

  Calculate(){
    double peso = double.parse(PesoControle.text);
    double autura = double.parse(AutaraControle.text)/100;
    double imc = peso / (autura * autura);

    if(imc<18.6){
      result = "Abaixo do peso (${imc.toStringAsPrecision(2)})";
    }else if(imc >= 18.6 && imc <= 24.9 ){
      result = "Peso ideal (${imc.toStringAsPrecision(2)})";
    }else if(imc >= 24.9 && imc <= 29.9 ){
      result = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    }else if(imc >= 29.9 && imc <= 34.9 ){s
      result = "Obesidade grau I (${imc.toStringAsPrecision(2)})";
    }else if(imc >= 34.9 && imc <= 39.9 ){
      result = "Obesidade grau II (${imc.toStringAsPrecision(2)})";
    }else if(imc >= 40 ){
      result = "Obesidade grau III (${imc.toStringAsPrecision(2)})";
    }
  }
}