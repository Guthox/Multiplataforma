import "dart:io";

var listaAlimentos = [ ["maca", 52], ["banana", 90], ["pera", 60], ["morango", 20], ["melao", 34] ];

int? buscarCalorias(String alimento){
  for (var item in listaAlimentos){
    if (item[0] == alimento){
      return item[1] as int?;
    }
  }
  return null;
}

void main(){
  String entrada = "";
  int? calorias;

  print("Digite o nome do alimento: ");
  entrada = stdin.readLineSync()!;
  calorias = buscarCalorias(entrada.toLowerCase());
  if (calorias == null){
    print("Alimento não encontrado.");
  }
  else{
    print(entrada + " tem cerca de " + calorias.toString() + " calorias.");
  }
  
}