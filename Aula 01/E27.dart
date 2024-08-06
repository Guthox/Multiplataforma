import "dart:math";
import "dart:io";

bool jogarNovamente(){
  String resposta = "";
  while (true){
    print("Jogar novamente?");
    resposta = stdin.readLineSync()!;
    if (resposta.toUpperCase() == "S") return true;
    if (resposta.toUpperCase() == "N") return false;
    print ("Entrada inválida");
  }
}

String testeGanhou(String jogador1, String jogador2){
  if (jogador1 == "PEDRA"){
    if (jogador2 == "PEDRA") return "EMPATE";
    if (jogador2 == "PAPEL") return "PERDEU";
    if (jogador2 == "TESOURA") return "GANHOU";
  }
  if (jogador1 == "PAPEL"){
    if (jogador2 == "PEDRA") return "GANHOU";
    if (jogador2 == "PAPEL") return "EMPATE";
    if (jogador2 == "TESOURA") return "PERDEU";
  }
  if (jogador1 == "TESOURA"){
    if (jogador2 == "PEDRA") return "PERDEU";
    if (jogador2 == "PAPEL") return "GANHOU";
    if (jogador2 == "TESOURA") return "EMPATE";
  }
  return "Jogada invalidada";
}

String gerarJogada(){
  int rng = Random().nextInt(3);
  if (rng == 0) return "PEDRA";
  if (rng == 1) return "PAPEL";
  else return "TESOURA";
}

void main(){
  int pontosP1 = 0;
  int pontosP2 = 0;
  String resultado;

  do{
    print("Jogador: $pontosP1 x CPU: $pontosP2");
    resultado = testeGanhou(gerarJogada(), gerarJogada());
    if (resultado == "GANHOU"){
      print ("Jogador ganhou.");
      pontosP1++;
    }
    else if (resultado == "PERDEU"){
      print ("CPU ganhou.");
      pontosP2++;
    }
    else{
      print("Empate");
    }
  } while (jogarNovamente());
  
}