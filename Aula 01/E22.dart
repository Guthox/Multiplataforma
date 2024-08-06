import "dart:io";

bool? pegarEntrada(String entradaStr){
  if (entradaStr.toUpperCase() == "N"){
    return false;
  }
  if (entradaStr.toUpperCase() == "S"){
    return true;
  }
  return null;
}

void main(){

  bool? inimigoEstaAtacando = null;
  bool? defesasBaixas = null;
  String entrada = "";

  while (inimigoEstaAtacando == null){
    print("O inimigo esta atacando? S/N");
    entrada = stdin.readLineSync()!;
    inimigoEstaAtacando = pegarEntrada(entrada);
    if (inimigoEstaAtacando == null){
      print("Entrada inválida.");
    }
  }
  while (defesasBaixas == null){
    print("As defesas do inimigo estão baixas? S/N");
    entrada = stdin.readLineSync()!;
    defesasBaixas = pegarEntrada(entrada);
    if (defesasBaixas == null){
      print("Entrada inválida.");
    }
  }

  String resultado = "";
  if (inimigoEstaAtacando && defesasBaixas){
    resultado = "fortalecer suas defesas";
  }
  else if (inimigoEstaAtacando && !defesasBaixas){
    resultado = "contra-atacar";
  }
  else {
    resultado = "coletar recursos";
  }
  print("É hora de " + resultado);
}