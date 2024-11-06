import "dart:io";

/* ======================================================== 
   Biblioteca ESPraDart - Entrada e Saída Práticas em Dart 
   Versão 0.1 – 10 de março de 2024 
   Instituto Federal do Paraná - IFPR 
   Centro de referência Biopark, Campus Assis Chateaubriand 
   Curso Técnico de Informática para a Internet 
   Componente Curricular de Lógica de Programação 
   Docentes: Humberto Fioravante e Sergio Ferrazoli
   ========================================================= */

String inputStr(String msg) {
  /* Esta função escreve a mensagem "msg" na tela e retorna uma String 
  digitada pelo usuario */
  stdout.write(msg);
  String txt = stdin.readLineSync()!;
  return txt;
}

int inputInt(String msg) {
  /* Esta função escreve a mensagem "msg" na tela e retorna um número inteiro
  digitado pelo usuario */
  stdout.write(msg);
  int numInt = int.parse(stdin.readLineSync()!);
  return numInt;
}

double inputDouble(String msg) {
  /* Esta função escreve a mensagem "msg" na tela e retorna um número real
  digitado pelo usuario */
  stdout.write(msg);
  double numDouble = double.parse(stdin.readLineSync()!);
  return numDouble;
}

void main() {
  int alcool = 0;
  int gasolina = 0;
  int diesel = 0;
  bool continuar = true; // Variável de controle do loop
  int gasosa = 0;
  while (continuar) {
      print('Informe o tipo de combustível:');
    gasosa = inputInt('1 = Álcool | 2 = Gasolina | 3 = Diesel | 4 = Fim:');
    
    if (gasosa == 1) {
      alcool++;
    } else if (gasosa == 2) {
      gasolina++;
    } else if (gasosa == 3) {
      diesel++;
    } else if(gasosa == 4) {
      continuar = false;
    }
    else{
      print("numero invalido");
    }
  }
  print('MUITO OBRIGADO');
  print('Álcool: $alcool');
  print('Gasolina: $gasolina');
  print('Diesel: $diesel');
}
