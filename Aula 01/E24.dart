import "dart:io";

bool obterResposta(String pergunta, String erro){
  String entrada = "";

  while (true){
    print(pergunta);
    entrada = stdin.readLineSync()!;
    if (entrada.toUpperCase() == "S"){
      return true;
    }
    else if (entrada.toUpperCase() == "N"){
      return false;
    }
    print(erro);
  }
}

void main(){
  const String perguntaAlibi = "O suspeito tem Alibi Solido? S/N";
  const String perguntaEvidencias = "Há evidencias físicas? S/N";
  const String erro = "Entrada inválida.";

  bool alibi = obterResposta(perguntaAlibi, erro);
  bool evidencias = obterResposta(perguntaEvidencias, erro);

  if (alibi) print("Inocente");
  else if (evidencias) print("Culpado");
  else print("Mais investigações necessárias");
}