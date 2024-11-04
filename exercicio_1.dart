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
  int votosAFavor = 0;
  for (int i = 1; i <= 4; i++) {
    String voto = inputStr('Voto número $i: Digite S par SIM e N para NÃO: ');
    // if (voto == 'S' || voto == 's') {
    if (voto.toUpperCase().trim() == 'S') {
      votosAFavor = votosAFavor + 1;
    }
  }
  print('------APURAÇÃO DOS VOTOS------------');
  print('Votos A FAVOR: $votosAFavor');
  print('Votos CONTRA: ${15 - votosAFavor}');
  if (votosAFavor >= 10) {
    print('O projeto FOI APROVADO!');
  }else{
    print('O projeto NÃO FOI APROVADO!');
  }
}
