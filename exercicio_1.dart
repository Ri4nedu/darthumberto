import: 'ESPraDart';

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
