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
  int c01 = 0;
  int c02 = 0;
  int c03 = 0;
  int urna = 0;
  bool continuar = true;
  while (continuar) {
    urna = inputInt(
        "JOÂO do Gás = 10 // pelé = 20 //carlos magno = 30 // escreva 999 para encerrar:");

    if (urna == 999) {
      continuar = false;
    } else if (urna == 10) {
      c01++;
    } else if (urna == 20) {
      c02++;
    } else if (urna == 30) {
      c03++;
    } else {
      print("numero invalido");
    }
  }
  if (c01 > c02 && c01 > c03) {
    print('Vencedor joao do gas');
  } else if (c02 > c01 && c02 > c03) {
    print('Vencedor pelé');
  } else if (c03 > c01 && c03 > c02) {
    print('Vencedor carlos magno');
  } else {
    print('Houve um empate!');
  }
  print('--- Resultados da Votação ---');
  print('joao do gás: $c01 votos');
  print('pelé: $c02 votos');
  print('calos magno: $c03 votos');
}
