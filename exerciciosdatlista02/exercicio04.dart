import 'dart:io';


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
void main(){
     double num1 = 0;
     double prod = 0;
     num1 = inputDouble("Digite o numero");
     for(double i =1; i <=num1;i++){
        prod = num1-i;
        print(prod);
     }
}