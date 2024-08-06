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

  bool? alta = null;
  bool? bonsLucros = null;
  String entrada = "";

  while (alta == null){
    print("A ação está em alta? S/N");
    entrada = stdin.readLineSync()!;
    alta = pegarEntrada(entrada);
    if (alta == null){
      print("Entrada inválida.");
    }
  }
  
  while (bonsLucros == null){
    print("A empresa está tendo bons lucros? S/N");
    entrada = stdin.readLineSync()!;
    bonsLucros = pegarEntrada(entrada);
    if (bonsLucros == null){
      print("Entrada inválida.");
    }
  }

  if (alta && bonsLucros){
    print("Hora de vender");
  }
  else if (!alta && !bonsLucros){
    print("Hora de comprar");
  }
  else{
    print("Hora de esperar.");
  }

}