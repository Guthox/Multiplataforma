import 'dart:io';
import 'dart:math';

enum Escolha { pedra, papel, tesoura, sair }

Escolha gerarJogada(int numeroEscolhido) {
  return Escolha.values[numeroEscolhido - 1];
}

String testeGanhou(Escolha jogador, Escolha maquina) {
  if (jogador == maquina) return "EMPATE";

  if (jogador == Escolha.pedra) {
    return maquina == Escolha.tesoura ? "GANHOU" : "PERDEU";
  }
  if (jogador == Escolha.papel) {
    return maquina == Escolha.pedra ? "GANHOU" : "PERDEU";
  }
  return maquina == Escolha.papel ? "GANHOU" : "PERDEU";
}

bool opcaoEhValida(int opcao) {
  return opcao >= 1 && opcao <= 4;
}

void jogo() {
  int opUsuario;
  Escolha escolhaCPU;
  Escolha escolhaUsuario;
  var gerador = Random();
  do {
    print("1- Pedra\n2- Papel\n3- Tesoura\n4- Sair");
    opUsuario = int.parse(stdin.readLineSync()!);

    if (!opcaoEhValida(opUsuario)) {
      print("Opção inválida");
    } else {
      escolhaUsuario = gerarJogada(opUsuario);

      if (escolhaUsuario != Escolha.sair) {
        escolhaCPU = gerarJogada(gerador.nextInt(3) + 1);
        print("Jogador(${escolhaUsuario.name}) x CPU(${escolhaCPU.name})");
        print(testeGanhou(escolhaUsuario, escolhaCPU));
      }
    }
  } while (opUsuario != 4);
}
