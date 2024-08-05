import 'dart:io';

void main(){
  String? entrada;
  
  String? nome = null;
  bool? maisProcurados = null;
  bool? disponivel = null;

  print("Digite o nome do livro: ");
  nome = stdin.readLineSync();
  
  while (disponivel == null){
    print("Esta disponivel? S/N");
    entrada = stdin.readLineSync();
    if (entrada != null && entrada.toUpperCase() == "N"){
      disponivel = false;
    }
    else if (entrada != null && entrada.toUpperCase() == "S"){
      disponivel = true;
    }
    else{
      print("Entrada invalida.");
    }
  }

  while (maisProcurados == null){
    print("Esta entre os mais procurados? S/N");
    entrada = stdin.readLineSync();
    if (entrada != null && entrada.toUpperCase() == "N"){
      maisProcurados = false;
    }
    else if (entrada != null && entrada.toUpperCase() == "S"){
      maisProcurados = true;
    }
    else{
      print("Entrada invalida.");
    }
  }
  
  if (disponivel && !maisProcurados){
    print("O livro \"${nome}\" pode ser emprestado por 14 dias.");
  }
  else if (disponivel && maisProcurados){
    print("O livro \"${nome}\" pode ser emprestado por 7 dias.");
  }
  else{
    print("O livro \"${nome}\" não pode ser emprestado");
  }


}