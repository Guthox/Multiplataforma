import 'dart:io';
void main(){
  print("Digite o clima do local: TROPICAL, NORTE, DESERTO ou MONTANHA");
  String destino = stdin.readLineSync()!.toUpperCase();
  switch (destino){
    case "TROPICAL":
      print("O clima sera quente");
    case "NORTE":
      print("O clima sera frio");
    case "DESERTO":
      print("O clima sera quente durante o dia e frio a noite");
    case "MONTANHA":
      print("O clima sera frio e possivelmente com neve");
    default:
      print("Entrada invalida");
  }
}