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
    int x=0;
    int y=0;
    bool continuar=true;
  while (continuar) {
   x = inputInt('Digite  valor de (X):');
   y = inputInt('Digite valor de  (Y):');
    if (x == y) {
      continuar=false;
   
    }
     else if (x < y) {
      print('Crescente');
      print("digite novamente");
    } else if (x > y){
      print('Decrescente');
      print("digite novamente");
    }
  }
print("programa encerrado");
}